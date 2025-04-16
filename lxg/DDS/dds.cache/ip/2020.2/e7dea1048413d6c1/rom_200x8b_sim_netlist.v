// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 17 00:07:45 2025
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
qYKTUOirYdf1sHq5LRObaEB8hi8OxJvOdPTT
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
