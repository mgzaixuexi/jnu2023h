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
    // //消抖后的按键值
    // input                 key_wave_filter, //波形控制按键消抖后的按键值
    // input                 key_freq_filter, //频率控制按键消抖后的按键值
    
    input [5:0] freq_select, //频率选择寄存器（1表示5kHZ 2表示10kHZ 以此类推）（注意不能为0）
    input wave_select,  //波形选择寄存器（0输出正弦波 1输出三角波）
    input [5:0]phase_select, //相位寄存器（0表示5° 1表示10°以此类推）
    //读rom
    input        [7:0]    rd_data        , //ROM读出的数据
    output  reg  [9:0]    rd_addr        , //读ROM地址
    //DA芯片接口                        
    output                da_clk         , //DAC驱动时钟
    output       [7:0]    da_data          //输出给DA的数据  
    );

//parameter
//波形调节控制
parameter  sine_wave_addr     = 9'd0  ; // 正弦波起始位置 
parameter  triangle_wave_addr   = 9'd500; // 三角波起始位置  
reg flag1=0;
reg flag2=0;

reg    [5:0]     freq_adj           ;   //频率调节参数寄存器
reg    [5:0]     freq_cnt           ;   //频率调节计数器


//100M时钟下，信号的点数为500，输出的信号频率范围为：参数0对应输出200kHz波形频率  参数40对应5kHz
parameter  FREQ_ADJ = 6'd40;          

//数据rd_data是在clk的上升沿更新的，所以DA芯片在clk的下降沿锁存数据是稳定的时刻
//而DA实际上在da_clk的上升沿锁存数据,所以时钟取反,这样clk的下降沿相当于da_clk的上升沿
assign  da_clk  = ~clk   ;
assign  da_data = rd_data;  //将读到的ROM数据赋值给DA数据端口


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
                if((rd_addr >= sine_wave_addr) && (rd_addr <= sine_wave_addr+10'd499) && (flag1==1)) begin
                    if(rd_addr == sine_wave_addr+10'd499)  
                        rd_addr <= sine_wave_addr;
                    else 
                        rd_addr <= rd_addr+10'd1;
                end
                else
                begin 
                    //相位实现：360/5=72 500/72=7 7个点对应5°
                    rd_addr <= sine_wave_addr+phase_select*7;
                    flag1=1;
                end
            end
            2'd1: begin//读取三角波
                if((rd_addr >= triangle_wave_addr) && (rd_addr <= triangle_wave_addr+10'd499)&&(flag2==1)) begin
                    if(rd_addr == triangle_wave_addr+10'd499) 
                        rd_addr <= triangle_wave_addr; 
                    else 
                        rd_addr <= rd_addr+10'd1;  
                end
                else  
                begin
                    rd_addr <= triangle_wave_addr+phase_select*7;
                    flag2=1;
                end
            end
            default: begin
                if((rd_addr >= sine_wave_addr) && (rd_addr <= sine_wave_addr+10'd499)&&(flag1==1)) begin
                    if(rd_addr == sine_wave_addr+10'd499)
                        rd_addr <= sine_wave_addr;
                    else 
                        rd_addr <= rd_addr+10'd1; 
                end
                else 
                begin 
                    rd_addr <= sine_wave_addr+phase_select*7;
                    flag1=1;
                end
            end
        endcase
    end
         else
            rd_addr <= rd_addr;
end

endmodule