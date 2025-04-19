// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Apr 19 16:07:20 2025
// Host        : PS2022QTODVDOC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               h:/fpga/2023h/jnu2023h/jnu2023h.gen/sources_1/ip/ram_256x16/ram_256x16_stub.v
// Design      : ram_256x16
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module ram_256x16(clka, ena, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[7:0],dina[15:0],clkb,addrb[7:0],doutb[15:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [7:0]addra;
  input [15:0]dina;
  input clkb;
  input [7:0]addrb;
  output [15:0]doutb;
endmodule
