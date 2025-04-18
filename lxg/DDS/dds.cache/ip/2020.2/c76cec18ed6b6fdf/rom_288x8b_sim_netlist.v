// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 17 21:24:42 2025
// Host        : LAPTOP-OHGEUKK4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rom_288x8b_sim_netlist.v
// Design      : rom_288x8b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_288x8b,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19984)
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
