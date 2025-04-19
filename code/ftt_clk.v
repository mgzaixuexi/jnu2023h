`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/05 15:17:35
// Design Name: 
// Module Name: ftt_clk
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


module ftt_clk(
    input clk_32m,
    input rst_n,
    output clk_640k
    );
    
reg [5:0] clk_cnt;
reg clk_640k_t;

always @(posedge clk_32m or negedge rst_n)begin
    if(~rst_n)
    clk_cnt<=0;
    else if(clk_cnt==50-1)
    clk_cnt<=0;
    else clk_cnt<=clk_cnt+1'b1;
    
    if(~rst_n)
    clk_640k_t<=0;
    else if(clk_cnt==50-1)
    clk_640k_t<=~clk_640k_t;
    else clk_640k_t<=clk_640k_t;
    
end    

   BUFG BUFG_inst (
      .O(clk_640k), // 1-bit output: Clock output
      .I(clk_640k_t)  // 1-bit input: Clock input
   );
   
endmodule
