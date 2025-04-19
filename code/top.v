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


assign  ad_oe_1 =  1'b0;
assign  ad_oe_2 =  1'b0;
assign  ad_clk_1 = clk_100m;
assign  ad_clk_2 = clk_100m;

//PLL IP核
 clk_wiz_0 u_clk_wiz_0(
    .clk_out1 (clk_100m       ),  
    .clk_out2 (clk_25m        ),
    .clk_out3 (clk_25m_deg120 ),   
    .locked   (locked         ),  
    .clk_in1  (sys_clk        )   
    );    

endmodule
