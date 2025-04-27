`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/27 14:50:55
// Design Name: 
// Module Name: ram_wr_ctrl
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

module ram_wr_ctrl
#(
	parameter addr_300k = 1920 //300kHz频点地址
)
(
	input 			 	 clk,//fft时钟
	input			 	 rst_n,//复位，接（rst_n&key）key是启动键
	input  	   [15:0]    data_modulus,    
    input            	 data_valid,
	output     [15:0]	 wr_data,
	output reg [11:0]	 wr_addr,
	output 			 	 wr_en,//端口A使能
	output reg 			 wr_done,
	output reg 			 fft_shutdown//关闭fft，高有效
);

assign wr_data = data_modulus;
assign wr_en = data_valid;

always @(posedge clk or negedge rst_n)
    if (!rst_n)begin
		wr_addr <= 0;
		wr_done <= 0;
	end
	else if (wr_addr >= addr_300k)begin
		wr_done <= 0;
		wr_addr <= wr_addr;
	end
	else if(data_valid)
		wr_addr <= wr_addr + 1'b1;
	else begin
		wr_addr <= wr_addr;
		wr_done <= wr_done;
	end
	
always @(posedge clk or negedge rst_n)
    if (!rst_n)
		fft_shutdown <= 0;
	else if(wr_done)
		fft_shutdown <= 1;
	else 
		fft_shutdown <= fft_shutdown;
		
endmodule
	
	