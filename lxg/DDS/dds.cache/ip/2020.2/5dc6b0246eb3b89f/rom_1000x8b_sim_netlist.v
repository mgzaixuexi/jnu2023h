// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 17 21:59:02 2025
// Host        : LAPTOP-OHGEUKK4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rom_1000x8b_sim_netlist.v
// Design      : rom_1000x8b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_1000x8b,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18416)
`pragma protect data_block
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
+11Y3eY=
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
