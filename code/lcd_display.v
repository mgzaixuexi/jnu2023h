//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           lcd_display
// Last modified Date:  2023/05/28 20:28:08
// Last Version:        V1.0
// Descriptions:        绘制频谱界面
//                      
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2023/05/28 20:28:08
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module lcd_display(
    input                lcd_pclk,       //时钟
    input                rst_n,          //复位，低电平有效
    input        [15:0]  lcd_id,         //LCD屏ID    
    input        [10:0]  pixel_xpos,     //当前像素点横坐标
    input        [10:0]  pixel_ypos,     //当前像素点纵坐标  
    input        [10:0]  h_disp,         //LCD屏水平分辨率
    input        [10:0]  v_disp,         //LCD屏垂直分辨率       
    output  reg  [23:0]  pixel_data,     //像素数据
    
    //FFT请求和数据接口
    input        [7:0]   fft_point_cnt,  //FFT频谱位置
    input        [7:0]   fft_data,       //FFT频率幅值
    output reg           fft_point_done, //FFT当前频谱绘制完成
    output reg           data_req        //请求数据信号
    );

//parameter define            
localparam BLACK  = 24'b00000000_00000000_00000000;     //RGB888 黑色
localparam WHITE  = 24'b11111111_11111111_11111111;     //RGB888 白色
localparam BLUE   = 24'b00000000_00000000_11111111;     //RGB888 蓝色
localparam RED    = 24'b11111111_00000000_00000000;     //RGB888 红色
localparam H_OFFSET  = 8'd64;    
localparam V_OFFSET  = 8'd44;    

//reg define
reg [7:0] 	fft_point_cnt_d0;
reg [7:0] 	fft_point_cnt_d1;   
reg 		data_req_d0;
reg 		data_req_d1; 
reg [10:0] 	row_axle_addr;       //行方向的rom地址
reg [10:0]	col_axle_addr;       //列方向的rom地址
reg [7:0] 	rom_col_shift_data;  //列方向的移位寄存数据
reg [2:0] 	cnt_col_en;          //列方向的使能计数器
reg [7:0] 	rom_row_shift_data;  //行方向的移位寄存数据
reg  		col_y_axle_en;       //列方向的y轴范围使能
reg  		col_axle_en;         //列方向的范围使能
reg  		row_y_axle_en;       //行方向的y轴范围使能
reg  		row_x_axle_en;       //行方向的x轴范围使能
reg [5:0] 	cnt_row_x_axle_en;   //行方向的x轴范围使能计数器
reg  		row_axle_en;         //行方向的范围使能
reg [2:0] 	cnt_row_en;          //行方向的使能计数器
reg [23:0] 	x_frame_data;        //竖直方向上的边框数据
reg  		col_x_axle_en;       //列方向的x轴范围使能
reg [23:0] 	y_frame_data;        //水平方向上的边框数据
reg [3:0] 	fft_step;            //频谱步进
reg [10:0] 	fft_y_frame_start;   //产生Y方向上的边框结束位置
reg [10:0] 	fft_x_frame_start;   //产生X方向上的边框结束位置
reg [10:0] 	fft_x_frame_end;     //产生X方向上的边框结束位置
reg [10:0] 	fft_y_frame_end;     //产生Y方向上的边框结束位置

//wire define
wire [7:0] 	rom_row_data;        //行方向的rom数据
wire [7:0] 	rom_col_data;        //列方向的rom数据
wire [8:0] 	lcd_fft_data;        //转换后的fft数据
wire 		col_axle_data;       //列方向上的坐标数据
wire 		row_axle_data;       //行方向上的坐标数据

//*****************************************************
//**                    main code
//*****************************************************

//在id为7016和1018的屏上，1个fft幅值用2个像素点来表示
assign lcd_fft_data = lcd_id[2] ? fft_data : {fft_data,1'b0};

//从rom出来的数据是高位先出来
assign  row_axle_data = rom_row_shift_data[7];
assign  col_axle_data = rom_col_shift_data[7];

//对信号打拍
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n)begin 
        fft_point_cnt_d0 <= 8'd0;
        fft_point_cnt_d1 <= 8'd0;
        data_req_d0 <= 1'b0;
        data_req_d1 <= 1'b0;               
    end    
    else begin
        fft_point_cnt_d0 <= fft_point_cnt; 
        fft_point_cnt_d1 <= fft_point_cnt_d0; 
        data_req_d0 <= data_req;
        data_req_d1 <= data_req_d0;                          
    end
end

//产生一个采样点的频谱宽度，本次的显示的点是128个，所以采用高4位作为宽度 
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        fft_step <= 4'd0;
    else begin
        fft_step <= h_disp[10:7] - 1;         
    end
end

//产生X方向上的边框结束位置
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        fft_x_frame_end <= 11'd0;
    else begin
        fft_x_frame_end <= H_OFFSET + fft_step * 120;         
    end
end

//产生X方向上的边框起始位置
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        fft_x_frame_start <= 11'd0;
    else begin
        fft_x_frame_start <= H_OFFSET ;         
    end
end

//产生Y方向上的边框结束位置
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        fft_y_frame_end <= 11'd0;
    else begin
        fft_y_frame_end <= v_disp - V_OFFSET;         
    end
end

//产生Y方向上的边框起始位置
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        fft_y_frame_start <= 11'd0;
    else begin
        if(lcd_id[7:0] == 8'h84 )  //分辨率为800x480的屏
            fft_y_frame_start <=  v_disp - 11'd250 -  V_OFFSET;
       else 
            fft_y_frame_start <=  v_disp - 11'd500 - V_OFFSET; 
                               
    end
end


//产生请求数据信号
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        data_req <= 1'b0;
    else begin
        if( (pixel_xpos  == (fft_point_cnt  + 1) * fft_step - 3 + H_OFFSET) 
		    && (pixel_ypos >= fft_y_frame_start) )
            data_req <= 1'b1;
       else
            data_req <= 1'b0;           
    end
end

//1行结束，拉高done信号，表示此次的频谱显示已完成
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        fft_point_done <= 1'b0;
    else begin
       if (pixel_xpos == h_disp - 1)
            fft_point_done <= 1'b1;
       else
            fft_point_done <= 1'b0;           
    end
end     

//产生竖直方向上的边框数据
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        x_frame_data <= WHITE;
    else begin
       if ( pixel_ypos >= fft_y_frame_start && pixel_ypos <= fft_y_frame_end) 
            if((pixel_xpos == fft_x_frame_start - 1) || pixel_xpos == fft_x_frame_start )
                x_frame_data <= RED;
            else if(data_req_d0 || data_req_d1)
                if(fft_point_cnt_d1 == 19)  
                    x_frame_data <= RED;  
                else if(fft_point_cnt_d1 == 39)  
                    x_frame_data <= RED; 
                else if(fft_point_cnt_d1 == 59)  
                    x_frame_data <= RED;  
                else if(fft_point_cnt_d1 == 79)  
                    x_frame_data <= RED; 
                else if(fft_point_cnt_d1 == 99)  
                    x_frame_data <= RED;
                else if(fft_point_cnt_d1 == 119)  
                    x_frame_data <= RED;                      
                else 
                    x_frame_data <= WHITE;                                                                                                                                             
            else 
                x_frame_data <= WHITE;                    
       else
            x_frame_data <= WHITE;                              
    end
end   

//产生水平方向上的边框数据
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        y_frame_data <= WHITE;
    else begin
        if ( (pixel_xpos >= fft_x_frame_start - 1) 
            && (pixel_xpos <= fft_x_frame_end - 1) ) 
            if( pixel_ypos[10:1] == fft_y_frame_end[10:1] )
                y_frame_data <= RED; 
            else if(lcd_id[7:0] == 8'h84 )
                if(pixel_ypos[10:1] == fft_y_frame_end[10:1] - 25)  
                    y_frame_data <= RED;  
                else if(pixel_ypos[10:1] == fft_y_frame_end[10:1] - 50)
                    y_frame_data <= RED;  
                else if(pixel_ypos[10:1] == fft_y_frame_end[10:1] - 75)
                    y_frame_data <= RED; 
                else if(pixel_ypos[10:1] == fft_y_frame_end[10:1] - 100)
                    y_frame_data <= RED; 
                else if(pixel_ypos[10:1] == fft_y_frame_end[10:1] - 125)
                    y_frame_data <= RED;
                else
                    y_frame_data <= WHITE;                     
            else if(pixel_ypos[10:1] == (fft_y_frame_end[10:1] - 50)) 
                y_frame_data <= RED; 
            else if(pixel_ypos[10:1] == fft_y_frame_end[10:1] - 100) 
                y_frame_data <= RED; 
            else if(pixel_ypos[10:1] == fft_y_frame_end[10:1] - 150) 
                y_frame_data <= RED;   
            else if(pixel_ypos[10:1] == fft_y_frame_end[10:1] - 200) 
                y_frame_data <= RED;  
            else if(pixel_ypos[10:1] == fft_y_frame_end[10:1] - 250) 
                y_frame_data <= RED; 
            else
                y_frame_data <= WHITE;                                                                                                                     
        else
            y_frame_data <= WHITE;                              
    end
end 

//列方向的x轴范围使能
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        col_x_axle_en <= 1'b0;
    else begin
        if(lcd_id[7:0] == 8'h84 && (pixel_ypos >= fft_y_frame_end - 287) 
		   && (pixel_ypos < fft_y_frame_end - 255))  //x256
			if(pixel_xpos >=32 && pixel_xpos < 96)
				col_x_axle_en <= 1'b1;	
			else
				col_x_axle_en <= 1'b0;	
        else if((pixel_ypos >= fft_y_frame_end - 537) 
				&& (pixel_ypos < fft_y_frame_end - 505))   //x256
			if(pixel_xpos >=32 && pixel_xpos < 96)
				col_x_axle_en <= 1'b1;	
			else
				col_x_axle_en <= 1'b0;					
		else if(pixel_xpos >=6 && pixel_xpos < 54)		//50,100，150，200这些数	
            col_x_axle_en <= 1'b1;
		else
            col_x_axle_en <= 1'b0;           
    end
end 

//列方向的y轴范围使能
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        col_y_axle_en <= 1'b0;
    else begin
        if ((pixel_ypos >= fft_y_frame_end - 32) && (pixel_ypos < fft_y_frame_end))  //0
            col_y_axle_en <= 1'b1;
        else if(lcd_id[7:0] == 8'h84 )
	        if((pixel_ypos >= fft_y_frame_end - 82) && 
				(pixel_ypos < fft_y_frame_end - 50))        //50
				col_y_axle_en <= 1'b1;
			else if((pixel_ypos >= fft_y_frame_end - 132) && 
				(pixel_ypos < fft_y_frame_end - 100)) //100
				col_y_axle_en <= 1'b1;  
			else if((pixel_ypos >= fft_y_frame_end - 182) && 
				(pixel_ypos < fft_y_frame_end - 150)) //150
				col_y_axle_en <= 1'b1;  
			else if((pixel_ypos >= fft_y_frame_end - 232) && 
				(pixel_ypos < fft_y_frame_end - 200)) //200
				col_y_axle_en <= 1'b1; 
  			else if((pixel_ypos >= fft_y_frame_end - 287) && 
				(pixel_ypos < fft_y_frame_end - 255)) //X256
				col_y_axle_en <= 1'b1; 
			else
				col_y_axle_en <= 1'b0; 
	    else if((pixel_ypos >= fft_y_frame_end - 132) && 
			(pixel_ypos < fft_y_frame_end - 100))  	//50
			col_y_axle_en <= 1'b1;	
		else if((pixel_ypos >= fft_y_frame_end - 232) && 
			(pixel_ypos < fft_y_frame_end - 200))  	//100
			col_y_axle_en <= 1'b1;  	
		else if((pixel_ypos >= fft_y_frame_end - 332) && 
			(pixel_ypos < fft_y_frame_end - 300))  	//150
			col_y_axle_en <= 1'b1;  	
		else if((pixel_ypos >= fft_y_frame_end - 432) && 
			(pixel_ypos < fft_y_frame_end - 400))  	//200
			col_y_axle_en <= 1'b1; 	
  		else if((pixel_ypos >= fft_y_frame_end - 537) && 
			(pixel_ypos < fft_y_frame_end - 505))  	//X256
			col_y_axle_en <= 1'b1; 
		else
			col_y_axle_en <= 1'b0; 
			
    end
end 

//列方向的范围使能
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        col_axle_en <= 1'b0;
    else begin		
		if(col_x_axle_en && col_y_axle_en)			
            col_axle_en <= 1'b1;
		else
            col_axle_en <= 1'b0;           
    end
end 

//行方向的y轴范围使能
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        row_y_axle_en <= 1'b0;
    else begin		
		if((pixel_ypos >= fft_y_frame_end + 6) && (pixel_ypos < fft_y_frame_end + 38))			
            row_y_axle_en <= 1'b1;
		else
            row_y_axle_en <= 1'b0;           
    end
end 

//行方向的x轴范围使能
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        row_x_axle_en <= 1'b0;
    else begin
        if(cnt_row_x_axle_en >= 47)
            row_x_axle_en <= 1'b0;	
		else if(cnt_row_x_axle_en >= 31 && (pixel_xpos < fft_x_frame_end - 10))
            row_x_axle_en <= 1'b0;	
		else if(pixel_xpos == fft_x_frame_start - 16)
            row_x_axle_en <= 1'b1;	            		
		else if(data_req)
			if((fft_point_cnt_d0 == 17) || (fft_point_cnt_d0 == 37) || (fft_point_cnt_d0 == 57)	|| 		   			     
			   (fft_point_cnt_d0 == 77) || (fft_point_cnt_d0 == 97) || (fft_point_cnt_d0 == 117))
                row_x_axle_en <= 1'b1;
            else
                row_x_axle_en <= row_x_axle_en;			
		else
            row_x_axle_en <= row_x_axle_en;           
    end
end 

//对行方向的x轴范围使能进行计数
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        cnt_row_x_axle_en <= 6'd0;
    else begin		
		if(row_x_axle_en)			
            cnt_row_x_axle_en <= cnt_row_x_axle_en + 1'b1;
		else
            cnt_row_x_axle_en <= 6'd0;           
    end
end 

//行方向的范围使能
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        row_axle_en <= 1'b0;
    else begin		
		if(row_y_axle_en && row_x_axle_en)			
            row_axle_en <= 1'b1;
		else
            row_axle_en <= 1'b0;           
    end
end 

/////////////////////////////////////

//对行方向的使能进行计数
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        cnt_row_en <= 3'd0;
    else begin		
		if(row_axle_en)			
            cnt_row_en <= cnt_row_en + 1'b1;
		else
            cnt_row_en <= 3'd0;           
    end
end 

//行方向的rom地址
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        row_axle_addr <= 11'd0;
    else begin
        if(pixel_ypos == v_disp)
            row_axle_addr <= 11'd0;         		
		else if(row_axle_en && cnt_row_en == 5)			
            row_axle_addr <= row_axle_addr + 1'b1;
		else
            row_axle_addr <= row_axle_addr;           
    end
end 

//行方向的移位寄存数据
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        rom_row_shift_data <= 8'd0;
    else begin
        if(cnt_row_en == 7)
            rom_row_shift_data <= rom_row_data;         		
		else if(row_axle_en)			
            rom_row_shift_data <= {rom_row_shift_data[6:0],1'b0};
		else
            rom_row_shift_data <= rom_row_shift_data;           
    end
end

//////////////////////////////////////////////////

//对列方向的使能进行计数
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        cnt_col_en <= 3'd0;
    else begin		
		if(col_axle_en)			
            cnt_col_en <= cnt_col_en + 1'b1;
		else
            cnt_col_en <= 3'd0;           
    end
end 

//列方向的rom地址
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        col_axle_addr <= 11'd0;
    else begin
        if(pixel_ypos == v_disp)
            col_axle_addr <= 11'd0;         		
		else if(col_axle_en && cnt_col_en == 5)			
            col_axle_addr <= col_axle_addr + 1'b1;
		else
            col_axle_addr <= col_axle_addr;           
    end
end 

//列方向的移位寄存数据
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        rom_col_shift_data <= 8'd0;
    else begin
        if(cnt_col_en == 7)
            rom_col_shift_data <= rom_col_data;         		
		else if(col_axle_en)			
            rom_col_shift_data <= {rom_col_shift_data[6:0],1'b0};
		else
            rom_col_shift_data <= rom_col_shift_data;           
    end
end

///////////////////////////////////////////////

//产生像素数据信号
always @(posedge lcd_pclk or negedge rst_n) begin
    if(!rst_n) 
        pixel_data <= WHITE;
    else begin
        if(!x_frame_data[0])
                pixel_data <= x_frame_data;  
        else if(!y_frame_data[0]) 
                pixel_data <= y_frame_data;   
        else if((row_axle_data && row_axle_en) || (col_axle_data && col_axle_en)) 
                pixel_data <= BLUE;                                     
        else if( (pixel_xpos >= (fft_point_cnt_d0 * fft_step + H_OFFSET )) 
		         && (pixel_xpos < (fft_point_cnt_d0 + 1)  * fft_step + H_OFFSET) )
            if(lcd_fft_data == 0)
                pixel_data <= WHITE;              
            else if( (pixel_ypos >= v_disp - lcd_fft_data - V_OFFSET) 
			       && (pixel_ypos <= v_disp  - V_OFFSET)) 
                pixel_data <= BLUE;
           else
                pixel_data <= WHITE;                  
       else
            pixel_data <= WHITE;          
    end
end

//例化行方向坐标的rom
rom_row_axle u_rom_row_axle (
  .clka(lcd_pclk),    // input wire clka
  .addra(row_axle_addr),  // input wire [9 : 0] addra
  .douta(rom_row_data)  // output wire [7 : 0] douta
);

//例化列方向坐标的rom
rom_col_axle u_rom_col_axle (
  .clka(lcd_pclk),    // input wire clka
  .addra(col_axle_addr),  // input wire [9 : 0] addra
  .douta(rom_col_data)  // output wire [7 : 0] douta
);
              
endmodule 
