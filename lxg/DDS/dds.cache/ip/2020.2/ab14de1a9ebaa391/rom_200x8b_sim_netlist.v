// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Apr 16 23:55:47 2025
// Host        : LAPTOP-OHGEUKK4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rom_200x8b_sim_netlist.v
// Design      : rom_200x8b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_200x8b,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [7:0]addra;
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
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "rom_200x8b.mem" *) 
  (* C_INIT_FILE_NAME = "rom_200x8b.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "200" *) 
  (* C_READ_DEPTH_B = "200" *) 
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
  (* C_WRITE_DEPTH_A = "200" *) 
  (* C_WRITE_DEPTH_B = "200" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19920)
`pragma protect data_block
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
qoLOqYvuGZCzncYzy+UstKE3kvt2Zxbkwpwv
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
