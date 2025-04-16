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
    input                 key_wave    ,  //波形控制按键
    input                 key_freq    ,  //频率控制按键
    //DA芯片接口
    output                da_clk      ,  //DAC驱动时钟
    output    [7:0]       da_data     ,  //输出给DA的数据
    //AD芯片接口
    input     [7:0]       ad_data     ,  //AD输入数据
    //模拟输入电压超出量程标志(本次试验未用到)
    input                 ad_otr      ,  //0:在量程范围 1:超出量程
    output                ad_clk         //ADC驱动时钟
    );


//parameter define
parameter  CNT_MAX = 20'd200_0000;      //100MHz时钟下计数20ms

//wire define 
wire             rst_n          ;  // 复位，低有效
wire             locked         ;  //PLL时钟锁定信号
wire             clk_100m       ;  //100MHz时钟
wire             clk_25m        ;  //25MHz时钟
wire             clk_25m_deg120 ;  //相位偏移120的25MHz时钟
wire    [7:0]    rd_addr        ;  //ROM读地址
wire    [7:0]    rd_data        ;  //ROM读出的数据
wire             key_wave_filter;  //波形控制按键消抖后的按键值
wire             key_freq_filter;  //频率控制按键消抖后的按键值

//通过系统复位信号和PLL时钟锁定信号来产生一个新的复位信号
assign   rst_n = sys_rst_n & locked;
assign   ad_clk = clk_25m;

//PLL IP核
 clk_wiz_0 u_clk_wiz_0(
    .clk_out1 (clk_100m       ),  
    .clk_out2 (clk_25m        ),
    .clk_out3 (clk_25m_deg120 ),   
    .locked   (locked         ),  
    .clk_in1  (sys_clk        )   
    );
    
//ROM存储波形
rom_200x8b u_rom_200x8b (
    .clka     (clk_100m),  // input wire clka
    .addra    (rd_addr ),  // input wire [8 : 0] addra
    .douta    (rd_data )   // output wire [7 : 0] douta
    );

//例化按键消抖模块
key_debounce #(
    .CNT_MAX     (CNT_MAX        ))
u_key_wave_debounce(
    .sys_clk     (clk_100m       ),
    .sys_rst_n   (rst_n          ),
    .key         (key_wave       ),
    .key_filter  (key_wave_filter)
    );

//例化按键消抖模块
key_debounce #(
    .CNT_MAX     (CNT_MAX        ))
u_key_freq_debounce(
    .sys_clk     (clk_100m       ),
    .sys_rst_n   (rst_n          ),
    .key         (key_freq       ),
    .key_filter  (key_freq_filter)
    );

//DA数据发送
da_wave_send u_da_wave_send(
    .clk              (clk_100m       ),
    .rst_n            (rst_n          ),
    .key_wave_filter  (key_wave_filter),
    .key_freq_filter  (key_freq_filter),
    .rd_data          (rd_data        ),
    .rd_addr          (rd_addr        ),
    .da_clk           (da_clk         ),
    .da_data          (da_data        )
    );
  
// //ILA采集AD数据
// ila_0  ila_0 (
//     .clk         (clk_25m_deg120 ), // input wire clk
//     .probe0      (ad_otr         ), // input wire [0:0]  probe0  
//     .probe1      (ad_data        )  // input wire [7:0]  probe1 
//     );



endmodule
