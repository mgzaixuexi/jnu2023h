// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Apr 19 14:39:57 2025
// Host        : LAPTOP-OHGEUKK4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/sb/Desktop/git/jnu2023h/jnu2023h/jnu2023h.gen/sources_1/ip/rom_1000x8b/rom_1000x8b_sim_netlist.v
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
bnl3HKib0973sxs2Nfs=
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
