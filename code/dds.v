`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/16 22:02:26
// Design Name: 
// Module Name: dds
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


module dds(
    input                 sys_clk     ,  //系统时钟
    input                 sys_rst_n   ,  //系统复位，低电平有效
    input                 wave_select1    ,  //波形控制
    input                 wave_select2    ,  //波形控制
    input     [7:0]       freq_select1    ,  //频率控制
    input     [7:0]       freq_select2    ,  //频率控制
    input [5:0]          phase_select1,   //相位控制
    input [5:0]          phase_select2,   //相位控制
    input                clk_100m,    //100M时钟
    //DA芯片接口
    output                da_clk_1      ,  //DAC驱动时钟
    output                da_clk_2      ,  //DAC驱动时钟
    output    [7:0]       da_data_1     ,  //输出给DA的数据
    output    [7:0]       da_data_2       //输出给DA的数据
    );


//parameter define
parameter  CNT_MAX = 20'd200_0000;      //100MHz时钟下计数20ms

//wire define 
wire             rst_n          ;  // 复位，低有效
wire             locked         ;  //PLL时钟锁定信号

// wire             clk_25m        ;  //25MHz时钟
// wire             clk_25m_deg120 ;  //相位偏移120的25MHz时钟
wire    [9:0]    rd_addr1        ;  //ROM读地址
wire    [7:0]    rd_data1        ;  //ROM读出的数据
wire    [9:0]    rd_addr2        ;  //ROM读地址
wire    [7:0]    rd_data2        ;  //ROM读出的数据
// wire             key_wave_filter;  //波形控制按键消抖后的按键值
// wire             key_freq_filter;  //频率控制按键消抖后的按键值

//通过系统复位信号和PLL时钟锁定信号来产生一个新的复位信号
assign   rst_n = sys_rst_n & locked;


// //PLL IP核
//  clk_wiz_0 u_clk_wiz_0(
//     .clk_out1 (clk_100m       ),  
//     .clk_out2 (clk_25m        ),
//     .clk_out3 (clk_25m_deg120 ),   
//     .locked   (locked         ),  
//     .clk_in1  (sys_clk        )   
//     );
    
//ROM存储波形
rom_1000x8b u_rom_1000x8b1 (
    .clka     (clk_100m),  // input wire clka
    .addra    (rd_addr1 ),  // input wire [9 : 0] addra
    .douta    (rd_data1 )   // output wire [7 : 0] douta
    );

//ROM存储波形
rom_1000x8b u_rom_1000x8b2 (
    .clka     (clk_100m),  // input wire clka
    .addra    (rd_addr2 ),  // input wire [9 : 0] addra
    .douta    (rd_data2 )   // output wire [7 : 0] douta
    );

//DA数据发送
da_wave_send u_da_wave_send1(
    .clk              (clk_100m       ),
    .rst_n            (rst_n          ),
    .wave_select     (wave_select1),
    .freq_select     (freq_select1),
    .phase_select    (phase_select1),
    .rd_data          (rd_data1        ),
    .rd_addr          (rd_addr1        ),
    .da_clk           (da_clk_1         ),
    .da_data          (da_data_1        )
    );

    //DA数据发送
da_wave_send u_da_wave_send2(
    .clk              (clk_100m       ),
    .rst_n            (rst_n          ),
    .wave_select     (wave_select2),
    .freq_select     (freq_select2),
    .phase_select    (phase_select2),
    .rd_data          (rd_data2        ),
    .rd_addr          (rd_addr2        ),
    .da_clk           (da_clk_2         ),
    .da_data          (da_data_2        )
    );
  



endmodule
