// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Apr 16 22:20:07 2025
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
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
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
  (* C_INIT_FILE = "rom_200x8b.mem" *) 
  (* C_INIT_FILE_NAME = "rom_200x8b.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
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
        .dina(dina),
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
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20608)
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
