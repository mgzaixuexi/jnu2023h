// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 17 21:24:42 2025
// Host        : LAPTOP-OHGEUKK4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim e:/FPGA/DDS/dds.gen/sources_1/ip/rom_288x8b/rom_288x8b_sim_netlist.v
// Design      : rom_288x8b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_288x8b,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module rom_288x8b
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [8:0]addra;
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
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3768 mW" *) 
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
  (* C_INIT_FILE = "rom_288x8b.mem" *) 
  (* C_INIT_FILE_NAME = "rom_288x8b.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "288" *) 
  (* C_READ_DEPTH_B = "288" *) 
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
  (* C_WRITE_DEPTH_A = "288" *) 
  (* C_WRITE_DEPTH_B = "288" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  rom_288x8b_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19936)
`pragma protect data_block
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
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
