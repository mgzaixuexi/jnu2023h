// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May 20 23:25:35 2025
// Host        : LAPTOP-OHGEUKK4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/sb/Desktop/git/jnu2023h/jnu2023h.gen/sources_1/ip/ram_4096x16/ram_4096x16_sim_netlist.v
// Design      : ram_4096x16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_4096x16,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ram_4096x16
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]doutb;
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
  wire [15:0]NLW_U0_douta_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     9.0695 mW" *) 
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
  (* C_INIT_FILE = "ram_4096x16.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ram_4096x16_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[15:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 45056)
`pragma protect data_block
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
9x7lGoMFVCEz3eHr7Fsc5tjfh1cGGQqAOfI=
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
