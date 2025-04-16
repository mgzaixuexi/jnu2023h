//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/16 22:26:39
// Design Name: 
// Module Name: da_wave_send
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module da_wave_send(
    input                 clk            ,
    input                 rst_n          , //复位信号，低电平有效
    //消抖后的按键值
    input                 key_wave_filter, //波形控制按键消抖后的按键值
    input                 key_freq_filter, //频率控制按键消抖后的按键值
    //读rom
    input        [7:0]    rd_data        , //ROM读出的数据
    output  reg  [8:0]    rd_addr        , //读ROM地址
    //DA芯片接口                        
    output                da_clk         , //DAC驱动时钟
    output       [7:0]    da_data          //输出给DA的数据  
    );

//parameter
//波形调节控制
parameter  sine_wave_addr     = 9'd0  ; // 正弦波起始位置 
parameter  triangle_wave_addr   = 9'd100; // 三角波起始位置  

reg              key_wave_filter_d0 ;
reg              key_wave_filter_d1 ;
reg              key_freq_filter_d0 ;
reg              key_freq_filter_d1 ;
reg    [7:0]     freq_adj           ;   //频率调节参数寄存器
reg    [7:0]     freq_cnt           ;   //频率调节计数器
reg    [1:0]     wave_select        ;   //波形选择寄存器
reg    [7:0]     freq_select        ;   //频率选择寄存器

//wire define
wire             key_wave_filter_neg;   //波形控制按键下降沿
wire             key_freq_filter_neg;   //频率控制按键下降沿

//100M时钟下，输出的信号频率范围为：5kHZ(ADJ=200)-1MHZ(ADJ=0)
parameter  FREQ_ADJ = 8'd200;            //100MHz时钟下，参数0对应输出1MHz波形频率

//数据rd_data是在clk的上升沿更新的，所以DA芯片在clk的下降沿锁存数据是稳定的时刻
//而DA实际上在da_clk的上升沿锁存数据,所以时钟取反,这样clk的下降沿相当于da_clk的上升沿
assign  da_clk  = ~clk   ;
assign  da_data = rd_data;  //将读到的ROM数据赋值给DA数据端口

//抓取按键的下降沿
assign  key_wave_filter_neg = (~key_wave_filter_d0) & key_wave_filter_d1;
assign  key_freq_filter_neg = (~key_freq_filter_d0) & key_freq_filter_d1;

//为了抓取按键的下降沿，对按键信号打两拍
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        key_wave_filter_d0 <= 1'b1;
        key_wave_filter_d1 <= 1'b1;
        key_freq_filter_d0 <= 1'b1;
        key_freq_filter_d1 <= 1'b1;
    end
    else begin 
        key_wave_filter_d0 <= key_wave_filter;
        key_wave_filter_d1 <= key_wave_filter_d0;
        key_freq_filter_d0 <= key_freq_filter;
        key_freq_filter_d1 <= key_freq_filter_d0;
    end
end

//切换波形选择寄存器数值
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        wave_select <= 2'd0;
    //确保波形控制按键确实被有效按下
    else if(key_wave_filter_neg == 1) begin
        if(wave_select < 2'd1)
            wave_select <= wave_select+1'd1;
        else
            wave_select <= 0;
    end
    else 
        wave_select <= wave_select;
end

//切换频率选择寄存器数值
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        freq_select <= 8'd0;
    //确保频率控制按键确实被有效按下
    else if(key_freq_filter_neg == 1) begin
        if(freq_select < 8'd200)
            freq_select <= freq_select+1'd1;
        else  
            freq_select <= 0;
    end
    else 
        freq_select <= freq_select;
end


//通过频率选择寄存器的值来选择相应的频率调节参数
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
      freq_adj <= 8'd0;
    else begin
        freq_adj <= FREQ_ADJ/freq_select;
    end
end

//频率调节计数器
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        freq_cnt <= 8'd0;
    else if(freq_cnt >= freq_adj)
        freq_cnt <= 8'd0;
    else
        freq_cnt <= freq_cnt + 8'd1;
end

//读ROM地址
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        rd_addr <= 9'd0;
    else if(freq_cnt == freq_adj) begin
        case(wave_select)
            2'd0: begin//读取正弦波
                if((rd_addr >= sine_wave_addr) && (rd_addr <= sine_wave_addr+9'd99)) begin
                    if(rd_addr == sine_wave_addr+9'd99)  
                        rd_addr <= sine_wave_addr;
                    else 
                        rd_addr <= rd_addr+9'd1; 
                end
                else 
                    rd_addr <= sine_wave_addr;
            end
            2'd1: begin//读取三角波
                if((rd_addr >= triangle_wave_addr) && (rd_addr <= triangle_wave_addr+9'd99)) begin
                    if(rd_addr == triangle_wave_addr+9'd99) 
                        rd_addr <= triangle_wave_addr; 
                    else 
                        rd_addr <= rd_addr+9'd1;  
                end
                else  
                    rd_addr <= triangle_wave_addr;
            end
            default: begin
                if((rd_addr >= sine_wave_addr) && (rd_addr <= sine_wave_addr+9'd99)) begin
                    if(rd_addr == sine_wave_addr+9'd99)
                        rd_addr <= sine_wave_addr;
                    else 
                        rd_addr <= rd_addr+9'd1; 
                end
                else 
                    rd_addr <= sine_wave_addr;
            end
        endcase
    end
         else
            rd_addr <= rd_addr;
end

endmodule