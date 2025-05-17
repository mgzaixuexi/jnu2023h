`timescale 1ns / 1ps //仿真单位/仿真精度

module top_tb();

parameter CLK_PERIOD = 20; //时钟周期 20ns  50MHz

//reg define
 reg sys_clk;
 reg sys_rst_n;
 reg clk_100m;
 reg [3:0]key;
//  reg   [9:0]  ad_data_1  ;  //第一路ADC数据
//  reg          ad_otr_1   ;  //第一路ADC输入电压超过量程标志
//  reg   [9:0]  ad_data_2  ;  //第二路ADC数据
//  reg          ad_otr_2   ;  //第二路ADC输入电压超过量程标志
//  reg                da_clk_1      ;  //DAC驱动时钟
//  reg                da_clk_2      ;  //DAC驱动时钟
 reg    [7:0]       da_data_1     ;  //输出给DA的数据
 reg    [7:0]       da_data_2      ; //输出给DA的数据
//  reg                 clk            ;
 reg                 rst_n          ; //复位信号，低电平有效
 reg [5:0] freq_select1; //频率选择寄存器（1表示5kHZ 2表示10kHZ 以此类推）（注意不能为0）
 reg wave_select1;  //波形选择寄存器（0输出正弦波 1输出三角波）
 reg [5:0]phase_select1; //相位寄存器（0表示5° 1表示10°以此类推）
 reg [5:0] freq_select2; //频率选择寄存器（1表示5kHZ 2表示10kHZ 以此类推）（注意不能为0）
 reg wave_select2;  //波形选择寄存器（0输出正弦波 1输出三角波）
 reg [5:0]phase_select2; //相位寄存器（0表示5° 1表示10°以此类推）
 //读rom
 reg[7:0]    rd_data1        ; //ROM读出的数据
 reg[9:0]    rd_addr1        ; //读ROM地址
 reg[7:0]    rd_data2        ; //ROM读出的数据
 reg[9:0]    rd_addr2        ; //读ROM地址
 //DA芯片接口                        
 reg                da_clk         ; //DAC驱动时钟
 reg       [7:0]    in_da_data1         ; //输入波形  
 reg       [7:0]    in_da_data2         ; //输入波形  


 //信号初始化
 initial begin

 sys_clk = 1'b0;
 sys_rst_n = 1'b0;
 #200
 sys_rst_n = 1'b1;
freq_select1=6'd3;
freq_select2=6'd4;
wave_select1=1'b0;
wave_select2=1'b1;
phase_select1=6'd0;
phase_select2=6'd2;

 end

 //产生时钟
 always #(CLK_PERIOD/2) sys_clk = ~sys_clk;
 always #(CLK_PERIOD/4) clk_100m = ~clk_100m;

//ROM存储波形
rom_1000x8b u_rom_1000x8b1 (
    .clka     (clk_100m),  // input wire clka
    .addra    (rd_addr ),  // input wire [9 : 0] addra
    .douta    (rd_data )   // output wire [7 : 0] douta
    );

da_wave_send u_da_wave_send1(
    .clk(clk_100m),
    .rst_n(), //复位信号，低电平有效

    .freq_select(freq_select1), //频率选择寄存器（1表示5kHZ 2表示10kHZ 以此类推）（注意不能为0）
    .wave_select(wave_select1),  //波形选择寄存器（0输出正弦波 1输出三角波）
    .phase_select(phase_select1), //相位寄存器（0表示5° 1表示10°以此类推）
    //读rom
    .rd_data(rd_data1), //ROM读出的数据
    .rd_addr(rd_addr1), //读ROM地址
    //DA芯片接口                        
    .da_clk(), //DAC驱动时钟
    .da_data(in_da_data1)         //输出给DA的数据  
    );

da_wave_send u_da_wave_send2(
    .clk(clk_100m),
    .rst_n(), //复位信号，低电平有效

    .freq_select(freq_select2), //频率选择寄存器（1表示5kHZ 2表示10kHZ 以此类推）（注意不能为0）
    .wave_select(wave_select2),  //波形选择寄存器（0输出正弦波 1输出三角波）
    .phase_select(phase_select2), //相位寄存器（0表示5° 1表示10°以此类推）
    //读rom
    .rd_data(rd_data2), //ROM读出的数据
    .rd_addr(rd_addr2), //读ROM地址
    //DA芯片接口                        
    .da_clk(), //DAC驱动时钟
    .da_data(in_da_data2)         //输出给DA的数据  
    );

 top u_top(
    .sys_clk(sys_clk),  //系统时钟
    .sys_rst_n(sys_rst_n),  //系统复位
	.key  (key),	 //按键输入
    //第一路ADC
    .ad_data_1(in_da_data1),  //第一路ADC数据
    .ad_otr_1 (),  //第一路ADC输入电压超过量程标志
    .ad_clk_1(),  //第一路ADC驱动时钟
    .ad_oe_1(),  //第一路ADC输出使能
    //第二路ADC
    .ad_data_2(in_da_data2) ,  //第二路ADC数据
    .ad_otr_2() ,  //第二路ADC输入电压超过量程标志
    .ad_clk_2(),  //第二路ADC驱动时钟
    .ad_oe_2(),    //第二路ADC输出使能

    //DA芯片接口
    .da_clk_1(),  //DAC驱动时钟
    .da_clk_2 (),  //DAC驱动时钟
    .da_data_1 (da_data_1),  //输出给DA的数据
    .da_data_2(da_data_2)       //输出给DA的数据
    );

 endmodule