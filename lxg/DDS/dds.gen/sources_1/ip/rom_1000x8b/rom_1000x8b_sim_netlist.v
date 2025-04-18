// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 17 21:59:02 2025
// Host        : LAPTOP-OHGEUKK4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim e:/FPGA/DDS/dds.gen/sources_1/ip/rom_1000x8b/rom_1000x8b_sim_netlist.v
// Design      : rom_1000x8b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_1000x8b,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module rom_1000x8b
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [7:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.1884 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "rom_1000x8b.mem" *) 
  (* C_INIT_FILE_NAME = "rom_1000x8b.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1000" *) 
  (* C_READ_DEPTH_B = "1000" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1000" *) 
  (* C_WRITE_DEPTH_B = "1000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  rom_1000x8b_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18368)
`pragma protect data_block
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
1xWvLD/p4tkf57nonng=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
