// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May 20 23:25:35 2025
// Host        : LAPTOP-OHGEUKK4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_4096x16_sim_netlist.v
// Design      : ram_4096x16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_4096x16,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 45232)
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
