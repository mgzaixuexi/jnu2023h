// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Apr 19 14:39:56 2025
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
xrtoCJI=
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
