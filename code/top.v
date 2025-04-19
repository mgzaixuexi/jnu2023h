`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/19 14:44:57
// Design Name: 
// Module Name: top
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


module top(
    input          sys_clk    ,  //系统时钟
    input          sys_rst_n  ,  //系统复位
	input	[3:0]  key        ,	 //按键输入
    //第一路ADC
    input   [9:0]  ad_data_1  ,  //第一路ADC数据
    input          ad_otr_1   ,  //第一路ADC输入电压超过量程标志
    output         ad_clk_1   ,  //第一路ADC驱动时钟
    output         ad_oe_1    ,  //第一路ADC输出使能
    //第二路ADC
    input   [9:0]  ad_data_2  ,  //第二路ADC数据
    input          ad_otr_2   ,  //第二路ADC输入电压超过量程标志
    output         ad_clk_2   ,  //第二路ADC驱动时钟
    output         ad_oe_2       //第二路ADC输出使能

    );

//wire define 
wire             clk_100m          ;  //100MHz时钟
wire             clk_25m          ;  //25MHz时钟
wire             clk_25m_deg120          ;  //25MHz时钟 120
wire 			 clk_32m;
wire 			 locked;
wire 			 rst_n;
wire 			 clk_640k;
wire [3:0] 		 key_value;				//按键值（防抖后）

assign rst_n =  sys_rst_n && locked;
assign  ad_oe_1 =  1'b0;
assign  ad_oe_2 =  1'b0;
assign  ad_clk_1 = clk_100m;
assign  ad_clk_2 = clk_100m;

//PLL IP核
 clk_wiz_0 u_clk_wiz_0(
    .clk_out1 (clk_100m       ),  
    .clk_out2 (clk_25m        ),
    .clk_out3 (clk_25m_deg120 ), 
	.clk_out4 (clk_32m		  ),
    .locked   (locked         ),  
    .clk_in1  (sys_clk        )   
    );    

//按键防抖
key_debounce m3_key_debounce(
    .clk(clk_100m),
    .rst_n(rst_n),
    .key(key),
    .key_value(key_value)
    );
	
//fft时钟生成
ftt_clk u_ftt_clk(
    .clk_32m(clk_32m),
    .rst_n(rst_n),
    .clk_640k(clk_640k)
    );
	
wire fft_en;
wire [15:0] data_modulus;
wire [7:0] wr_addr;
wire wr_en;
wire wr_done;

data_modulus u_data_modulus(
	.clk(clk_640k),
	.rst_n(rst_n),
	.key(key_value[0]),                       //键控重置，就是题目里的启动键，不是复位
	//FFT ST接口 
    .source_real(),   //实部 有符号数 
    .source_imag(),   //虚部 有符号数 
	
    .source_valid(),  //输出有效信号，FFT变换完成后，此信号置高 
	.fft_en(fft_en),		 //fft的使能，接到数据有效或者时钟有效都行
    //取模运算后的数据接口 
    .data_modulus(data_modulus),  //取模后的数据 
	.wr_addr(wr_addr),	 //写ram地址
	.wr_en(wr_en),		 //写使能	
	.wr_done(wr_done)		 //分离模块使能
);	

wire [7:0] rd_addr;
wire [15:0] rd_data;

ram_256x16 u_ram_256x16(
  .clka(clk_640k),    // input wire clka
  .wea(wr_en),      // input wire [0 : 0] wea
  .addra(wr_addr),  // input wire [7 : 0] addra
  .dina(data_modulus),    // input wire [15 : 0] dina
  .clkb(clk_100m),    // input wire clkb
  .addrb(rd_addr),  // input wire [7 : 0] addrb
  .doutb(rd_data)  // output wire [15 : 0] doutb
);

wire [7:0] waveA_freq;
wire waveA_sin;
wire [7:0] waveB_freq;
wire waveB_sin;
wire wave_vaild;

//频率分离模块
wave_freq u_wave_freq(
    .clk(clk_100m),
    .rst_n(rst_n),
    .en(wr_done),//使能，上升沿有效，fft取模数据写入ram完成再拉高
	.key(key_value[0]),//按键，重置识别
    .rd_data(rd_data),//fft取模数据
    .rd_addr(rd_addr),//ram地址
    .waveA_freq(waveA_freq),//波A频率，要乘5000
    .waveA_sin(waveA_sin),//波A为正弦波的有效信号，高有效
    .waveB_freq(waveB_freq),//波B频率，要乘5000
    .waveB_sin(waveB_sin),//波B为正弦波的有效信号，高有效
    .wave_vaild(wave_vaild)//数据有效信号，高有效
    );
	
endmodule
