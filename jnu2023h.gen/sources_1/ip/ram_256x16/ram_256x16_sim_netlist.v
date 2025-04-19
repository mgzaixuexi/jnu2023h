// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Apr 19 16:07:20 2025
// Host        : PS2022QTODVDOC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               h:/fpga/2023h/jnu2023h/jnu2023h.gen/sources_1/ip/ram_256x16/ram_256x16_sim_netlist.v
// Design      : ram_256x16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_256x16,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ram_256x16
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]doutb;
  wire ena;
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
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.01735 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
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
  (* C_INIT_FILE = "ram_256x16.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ram_256x16_blk_mem_gen_v8_4_4 U0
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
        .ena(ena),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21216)
`pragma protect data_block
0CV9fl/RhQP5UKo2qnWJWPKQ9FEhJE5RwmeRoiCf1H/LAhme9NRDx+rPoKv67KNLvrUjvlbohXqR
fLx8sK6w3HVXnGYc+cC3ZzizfXRmPGiCCwtend9v//tS6tQJERTcdC9Oy44WIS1Jx7UO1SEoemPb
BIJxlqbu3nmxyDhbYD2TCk+eH5lwd0nUfCp9ryxdlqoxGsCOJ4WrvPjvZ7ymWlpkePlAlM8idxAL
uFMPVu24KNG5lNwNmRfh/GhCFVOT2Um0U40wXm33KHugIYqwGmilIXWlriH6y2ruNW876ETuJVyg
VQpT50OppPL9GghXFlZj8EvtqjRHmJN48SUSvdfi8Z48/FeCrZrEaBfcGJrFfA9Xu5p2v3EGXlBk
ijDKfJLluMzAF1O5JX2LPFpnCQ5nhWoR5yCPrfjvYo50GSa5fc5eFLPP13+VJbnKINbz16Qk3PKw
Hd+hBecNe3NePxtR9GwwWOZdFfFYNRt1Pd0ib4HPQHKnQGtbcHObEAymXK0+t4mG/OxWnzqJgbJc
ySH6FNNGtQ6+pdaF0QEoxOuYRRLCSTloxZL6dZzCUtb384nyZR853g+wwEatmBsCVUqd6iETY6QQ
guRuEnD65m1OrZRPb0W7eoxd2SIVSrMlVOzQzsq6Za9txZXM+OhNgJDtrTHL6Nd3pzaCfHtcFm6T
f9oXJaCuxYrYB6hMSvKBzXZaYBu8+KwqosiAUgLRUDYSmpl0gKo8XzVBTSAM5mkBgOQvIpO+bzWo
0gIauZ51IEpYxwLZGU/RjKgAVy2IOxh4RwfFcs9J84SXks+J5QV5F8cjh1Fzw6/RGsMxzH0DAG+M
qzoofqucXbx8ezdzUInkKFQllGMwzZVNDz8m1EqVqx9tfkjhf34ZLCHvkQx9UrrmO7nF7wDzafWP
9vGOwP7c1DHQjBYpCZ5rbzhnzPlhLoLE40E6oe1tCymiMG/MlTNeuGRlDsXMG+hrSGMwDSO/VbHG
nJU966GarpsyZ7XOn6Zzss6OF3FwGhK2pVfhwft3NgXGCp4vQoKSwWVmewb035k5GKE0JxITazvO
9rblIvvK2s5kV5kgJYRrmzfImfrga7mvUlvDUcZCQiaHhgNEoxJR0sbHNda0rmy5/1UbfaXmT1xt
cJ02iDCmiggNH22Fb3MqikOxEA3w3I4hRLQyT0lMqr3sFqy4HTqG+wQX04RSUfvjDnOVtdR49DLL
xBuLIm60SCxpCppRA2NFWbJ2pjKYr2gA11U0eEwctiQ+8ST+oWty2iIlk249gM4sITV8cspg9Xa9
vLKLgVlkLCDj0TV/unYMPxHumRF3SZwnWorKAWjKv+TLuZE8Dxd2HnLRbBaDfmZReSOywuNc98ne
KYMNlBtQk7C0a+8AYH6aOkG/3qmVVab315UXPCt3jKXZ8k/lY6U132o63lW3Q3jOYaqjVWe4zy+t
CmQ1dkSXNyd9Dp64Znku/2ZG2ZdhNulWJYP+vZbd+nz3xnjO4MJJZE5FTHyYndkd3ShYX6OBuTrb
pdPL+X4om1iRpTaZt0nGYLpz2N14LXFbz3uraiosAoogiDie2/U4bHrxGfXjHnESamcaR2DpMpbM
Lu6uSxayrfAdEPrG6qQ4F85obCrgv1DnVSEsOSd7xg9iKHmekUHRYx8bIfR8ELV4lqiZRg6oTInw
BdUvXiGGfDYCS6PqluhfkzqFMCVoAyOauEngKhNBXnlv6C0g3Z3S/w7NUXgImVY3Hhf2oheJnK6U
ybbeILX7a0vkcNKyVN8XvoZ698zDg/X28uzB3Rxab5Wd60yzsYNVL95rZOFGJ1JJM2C1FojYD4nR
STFc06WKNlaA+QEDta2K1gKn7kRDovK7Ee8mKwrsz0XxRXgwiP1log6X/jLh3Yefv10gP9/BH6nM
fkbKUyeYVOTOd1p8MUqVX2c4SuGEPEdjJnH+nHdZ3HObk3v1ny7tjFZ8FuelmQt6orAxWDeVeJ5m
3IVwq8cr5o5S9hiXoiB1WIOTSPl0GMgQJZRhsfYO1SYMQJEGXb4UCBKqLoiXzv6jXzTeyaeXIr42
y/gptQtuxK9MtvZ9b9poVtn2gR3oiEl42MjDtJF7sNh/p4379VDYOu0kib7flnDaU+uLk8dDCufM
ZCtCbGfhCXGzTkyb+n78bEubaRHX+Y3BYNmpw1PMjwWOYDKDORSgI3IsLW04+0dqgbBOemIRIv4z
97dc+Vju68qMgITAX/7U7/VnSSAAcAOnV/js8kDS+B3x0aZQJGZx82UdFc74fsr0XQm5NovhpXhC
Bf3wI1x9/pTHVagIngoW9YFsWys57c+XRseua9XyMyTriQRP1cilgGUUdlStSf4pr/0u/XXOPgEI
0VTxe7FsfXZqOSv4bd+v1NrpvBR9DvF+n40Pre8TptUyNNfU4Bd/RnI1GEuHkrjNaQTIXvLTPzJ5
JMyqTstdONfw0Z/hx3Ql94I9qtdqP/Y7Iz7zFFqXWP2QbbCOw6xKSbALtTeA14Q88IXMM4pFrvQ4
Sx8kgDw70BYkxRpcy7lDM84wApWbzFLrg3ef4Mw1tQA8FSnBkAjUzanYVG9zuIQoxh1fzp//miq4
lRiUKeod9p5BWnP1zdJeqKsw29s2EmAoY+HkW3uL7HuelViBRYqMUDH+LyJtN9vgBAEVxdReb8AZ
XtZyZxeoRy3NFvBWBJtoab1PaL2TDgqG46Cldh+uK5lP+bZ8+7I5jIDeux37Ecc71vieGTi1y2J5
oicSgZnHtNfYWYd4hOhnKPphOG1FV0topnuahEr/qvyTMCrfJ2zWJTKqT38iUsBYMWPPZsf+ZfWG
3Qsi8TwM9QgWpJ9IhcUlS5B3az8UPjA9w7Pxa5wQ4JBOqp0uWyGQMhPpIYY6mRV9SHbvI5TcXHhm
XQa2CfmceCT0KJLxgDyq4ldBCD7x5zA2ggsO/vgKHv19P7V1WzhptyevkFFYKgb5p6bQdMc9/re/
6Xr5NeBrv83G5hEtEcEoAMy5U+qh5oJiEAv8/B2xWkot49gjBnWFGUjUSEErWgr1oTWRpfjT33aq
XT86lMqVhOITTNXnllLMaNwwiOOJbeaXgDj/seS5f5oi9EfwZBblZgLT5cLNvsRiNzUSKfhCl8Mf
Hl0LwWqXHvjCGbewAAMsaq1+S4mrcIhM3cKjDidb6hnUji5SpCU97C6Zw0TmxCD5QF+eoNHIaaHH
ngjbVaUnJUihZjq4K71grDkFPdbiFJac//YGPEd7I8hrgClhUgKx/7rELlQfMbaLmGCl3vbFaJ+K
eQfyHkX9KjVvtVFG0Ra+JKupEzvh5m0WG05aYiGKJSXrr/ewZuh+J2yVeHUo4D7/lfiHU5LdNJ68
b+kGsCg+A45zkC5gQ4AxdWIBBYTTuDxRAXVTLzt7RXdPSp+Si8aWs1At8AUvMWEQ+rGklInpMZi3
yDnYxnKDjJPq6Crg+WyLT0hW2Kfn5OYnKbWk3dlgXUJgTX9Gh4jcsnxL1WHGljHX+s3oAfaI2oDN
8MGrWxgqnsHLdDwzU3R1HPkvq8sfN4RiZRgabzvpjRn6vBHAF8YCQIQU8/tBTXUTnLDQVY8/QPQ7
hJHrZT7rMsrjC6jhgdxNvQCS7hwSDtEGhVLmNgqYbWxp5LYcX7kVc6/Ro6AaamsvJ+TSEwpT0Ew/
N4/eQpq+kdXyAcb+UFbOBAi0vcxji9f8gup7KO56ihRjHpjeplJe9Wmno2FDMf3hwxj2FZf1eAM8
qRBWz9HfcratO0pOuxa15Eu40ApFAUOKR7NY1OVUlSE5uEmOh8a4C4f7bQC6HnfsP6TWoMFhZpx0
prIwNAo+XUQ8sDVl/9/gHQiq9t0dve8DU+7mNaxzzh/INztwJhWc81hlXiQy0LAAYy+R7eGvxkSV
E9RzOx3ELkomSDwHqGKbnOmEBVYMlupkjKZyNJmnoQgrY+nGfSiDP0hQI8ntiUOz2IEiju8JXS1+
N8bCGfcqFC2KH+C8x6HYyZN7OTLSozqLUyh5cXyIqIRzH9Ln4JQopsFGGKfKaRGUlDjQhnjST8Pj
pIALas3FIDa9gQc+SN/WlzC5hVUQQjwrhVJb45Mk0tGaDBWUB4lFfh4sdroGA5/PevCX4QQcXuCF
lRTtR12EoQwBJR4RavsKcuGSFT2LHS7KhBuhqbo54JiDdSD8szM84KAuwl+ACYBI8c5hhJ258QFE
0z11NhFalfky6QcF6CH+XrOinn/buf0fZjlqtA/7Wq6Xi6h733TVywXXci77Xr22+UNcjqJJ1ETU
fcuLfkywv+7vWD9jQJCqR63HquIkrb9QD1MxcgwW3iNh8O5PCOMZMhemiLQZj8WiVs4sixgQveW9
F8w66plKTTIOmDzFt3YcMIyCVQhOtsspGMa7gh/Ypr1Sp+of1ms1Bf6jxuWEFmbj9kginE4iIiZc
dP9iw1c0AjX+ChegWgwFi/8CtbtmC7OQ17Cna2By9Qw50f5L2QH7nOir8JV3wO3sQzndi10GrOEj
1EiLWMaRm82K/ji0KNhCeRXVE3Encn2Kt+NATOAqWN50WAEmvWz8SOBmje2UemZ9aRbJb5YYWgbY
fVWdtf5r7WYDPOvCubGDvtfIvkFQwmCZydEypouwl9MOPw6YMzik3g6bN/sEUPUxZvYG70Qw5Oz4
4U4AlvXjaWUYXkq0TJU8zzZbVxH9S+UEMw2LIiFKIo7cWRjTqzMtgfIE6n/trlrQJUgWLAnQ/9Nz
2E9Km2+EaWzsBYtaq1CWeX6N16gStrgP2TnAaTrStAVzMWrJ26uozP/SUGKLNu9pg7L0Ye2fqSxO
YOk/tMB1q11j/sN2Wt9Im6/5dZBvxG8kBIHRsV6GwYwJ4evZk6NARicPH92olul5Vat5fNocagFf
A1Onma6ukh3hmMRgHARCB0ETKPM01pL2kbkwKKZpRJwlYnhKcg/aNXOIo4v69p2ECyJEj7DyMBEB
ycTJaVPU2GpLP4QTh5MPWjMau0Q3ECTmOwYYLd9UBzvsc8trg7RSmXeyOxW6RBnS9VKxg05qju3m
f1g5eN/ytsrchpSc98oOf76ythY3+3KpSK0l0iV24zy1rl+z1HKDC80sUmSJYs1cDpdiR9+XO358
hT5yamS61ipGoUTERx+8PGM01FgT6JkNRUqNzKtskgV2CtfxndWvHcXV2iITjOILzUkWX98B8a/l
Mqn+j2H8+cSV8+j08MQBuQPQucCoBGYNEBRgMyR0U+9eio7tMskqX8QNkAI1CZZraTY5nvMiMIBk
ubPZhmQ8tsmhmmFjTCJfKk0+ndYDWijD5AtZ+wLBu/Bd/mM7dSR5njEIHTECfJNzLNhALkc6icbY
qp9lFz5Gnrkn4AxPAQLOwrj7Plw7vvGb1bBakczOEOaCeefckHUqyuVmbbddZJoLdZZddvVtpyB2
WsVyCtFxGUU6KeUqcqkUuAljMDjQS7tHvmqqQh/JXl+Kt56QWx9SZAtOyvxSjZwM8kfFznCs/V/E
YfR0mf9OpB8/MvGoZ12do5WcxdXEcgr6EhOuTqwpFkSPgwsu7v4Qkg8JyUo7InLOngrcS5phu589
zgmUQ3taWQ620RbYty7RjnoytrsyiGGCo+HF7VWtIerBgmgjlzP+9/9xukafJ+P9Co8EOJDwCr3e
JX6sLFvsU7swhHt8KcAzLYNhUPn8ss5xTgzDST+xuD7LvZhOVwlU+bOwGP0cUGPiF2YOf6eOlI2X
f5AyTEGh5YMtuB1R6b0xr7h2dFBxionumyaDP7pTx/rnO6uVjyA+Bn+OJtoOLG5Giv/OaIEZr2HQ
hAQJDI8gXOyiIrprWMkbwWYVbOnQxzOozrfY6UZ9ID8Bd4K9sNSeVGlIb8uKHFryP2wCwRh8no1q
B56LqnD9SNgNJUy4hJNayuZB1nnBnMSg0O/X2Jh2rkWuLuhXJgHSlwi8gNxjcPTPJHlzKpoo274X
1BjzbVlzzA4BbJxT3AIjDtSEql89FYER0ByP/xf4U9w2FErFPRByW/arIJy6l5jGQ87ci4V56Gcu
TGWbSFO/GZM7UjT1Qzp+0gcaAfayMLEC5Qi+/EKitIBHUbCECvBrehchHgc/6tKvUPfZgEu2U6iL
l+DfSv6mIf6GEAnSY3MO+Qk/AAKuZs/RsxX20aUarMgwxRIQNh2wjCsJ59pGQXw82Q5XttLteRRo
rp5u3WxWp2ASjn4CUSTUo5Q9R4Lb0/gg4g98+um0MToapANAvRbY+0TgfKGL75iZaDtezUGjMTYw
0FywBGGsq9+bzIZ7cVh97lpDoDDAqRe+VgOmJ3sq1YgGGvQL5euYEgHxpRDahNA6Xno2uhMODKtz
UvwRWBOR8rzEYxxBB2PDYrNbJMY05ZFcAmsyi3EXPmM0hG13WqtvhaQcXL4GZyl++bQNqWmoKmEr
lrOt21aeOjuKvs6k4Igwum3VKZWJDA6wB8F89/POA95NcWM2YvIaItkAV4xyc941xLbz264BBB5S
cYRQ5Kq+l/HcPu0wLnfdQIMMqy9992UOzKlqls5kBzS5HZ/clXPjOvKbl+F9A2YDauwBygRjueuV
NvZGVke/pxHCND5kADFXj3NDyt2ljsptSsYu3edrKWSQi4rk3ufYniSUcI6jDm2M2xVfjxley73a
8BDArIszVrnj/xSQT0aZzoe4ENHZfeMDM89l/q3iPsFAv+PVjQAD0FtgCP9+N9Mkw6SzYkPGajY4
5x7CdKmykxmgVwFXx4Yz8ytEwJ0LvS32q7w3ILXZgcdKPJknMJgYdypSTj6E5ZOUiPVAQB6R2KSy
XxWeASsgSKhb6WSpzQyouxPUPatzwhdjWzsm4XSUKZb23NLGWWil0rqiPcFbZifUmmK+1vVs043C
uHGJjHShuICwIOkzShfam4n1bXPnO8hqxpVDSuxpwMZBLoc8nR2QVfwtUopzEgfQVpK6r4/EandK
jH1pn/H8TdnjtTeupO/BlvCxf215E71hKs77/CqOUAiRh0//u/QIedNDmUFOxlquf5mpiarOIIFh
4Sx/aDHk+4POnNxYoTAZ2DM90Da12NBvUBWgeV6dSDWXlE3hiE175lgsr27g9+x807xMmu+h/XnG
a4sF/tb876mKFzeIs+OB2e/emuoM7IEkVG5keK4Wl6/m8/KDIIIV+lMp/b6NZBym+n0Pzlu0ZiAZ
TDMV4PVqZwilksKzcMZWnJ2HqkcIXbBfzsMyENNDKlGDeC7ifiJ4UWY03Mrr2FmZ3Vidy++LRjsP
Kxdda0DAICdECOYZWNlGAWkMMpUsm0CHZ267MotfHGC7PH5PgrIaXNDhEd6TvaXpq7c6iuuybK0i
T9S4H4mli3vl2vOMpeGYBdyBVSuQ/OLachZubY39IlN7jmRTmnVRNuxZg5yP+VH+iMnk34TwICac
/neOq8mmLX9RKnNQBWtAxtuwLlz8+khzW7pTeZU05UgdlYdSDgjDdN1cMH9TsBtA9B3RrevjwicF
98WJYsYqwWtam8EPmPrruyVuhaHgoAghdrBE2ZdHeNNb8ohmPiqSxgWb7wvdXYq/t+8Ybj1TKsb5
c0PUEXTE7QAKr4YADiez2K4Pv87MlurB/qa4bS77IilU5TYiQIToB6spNe+dowwWupDORnI6kpoK
d0ElrCgQb1BsQNzetLKuLBnvVLIouprHYBzMM9U8DqbHAGxOlfxgE4hHK5BgZHuu/XjOGKlwhOcS
CQxvDayNDD5iHnCQ4Yiu8Uz+oAhquSPVd0DODx5EcRSGw/Qys0R7rKswTMYm/4dMLTOMLCBEwgnp
p+1p05elP2q5tq3NhzSoi0lDhisStLjPC83O0tL5uhv9VMNuV3Yx+rFs2MMrCLf/1lFNBJxCx3fQ
dB8SVghVPUpTO4k9+dX3AS+zvv0a9wKsmw+GkLRW1So2jN9YloGtqljSWl1BQnEIyRzsXV6UU72h
tJmuwBalUvfK4yP8LbPpjdjybbd24GJ5wGIYK0RUDu51bimQxMbynkbEWJftC3QBdT6tgrmiBPFL
DJbXqoZzE4a1Cgte344RTrPnTbESgjJ9PlGtvaWN/2U5y9D1OZQ3DKv7equM8XRCxHhAqp+ZOKtd
ely7hRv+417hA1hNg6Zel2RCUuX831MlGyFXpxJJU4+r0kR4Ax1LE3w7C68Om6UFnkOjFAKYmiJx
fdXWoHulf1GDnVcffcODExG1YD0VX5XWFYD0peuGztyXNOgubKdtQyVA3wWEyWGa7Ju7uz75A+36
aFaSc5DrQ0BAi4szvnT+QmE1qYOn1aigrdnH3LrSVJQOtchlZsPH6PODPLRXvIxn/y5SBo4U0cg3
KFS5weECHnTrv1Pa0WZ8LEGAc/9AhbTTVCdl3HE8vW4DdDwhmoMx+eyWnfVKEMpjTfLn0mFhUkc1
p5c0E74zd8MvboCtFh1P/97DtyUh/C1sfPkTQBQwJEiijIO3jMK/zSc09JimkNPHF0cAGkeEcUXF
spmjB4V6UYsfyzhtPHrNGAvf70SfmcZGd9Pa7DKy2u47mkYCPbxr+nBSUKfCYIMK0rA81TjxIaRo
Z5AO54Be3jV/C28QtBoEf/gvR199jj65FIhuIZIdUrMcjxwOcRZfGokbulST6YIHKu2x8eY6voF3
XUvvbRCCY+bvDB1YdZt8XseD+y40XATT1KGXFN6gEYfH2YiMe7SBStj6prGo5jUs/D+QHPNzSMKM
LcEJnHvCarmRB+gvmjDlVwV0cIsra3AsRNfk8MggSMPfHfTgNQQnk/sfrqgInbUtD8h6y/dv7BXl
v0hFPfLoEsPQ5O30wpdWcZVXKRaFQ1GLzlc4mpDiSPUuriCfqYYjjrQ0ykFP4Q+i7KCkUME86nI7
1oqU9qTDtGPjpzmhvO+MSbOLfEazAwf5RbGddEx5TZ/WMsm92O1Vuu+sNTRmOwHDdvmcfDwPoZ/T
2rbBl+67wkIgXFhILxz54PpfEE88OZ3zWTJlXKSl+tFPwUI9un0gSDHTqgVWzAGOeqMBaIFsH688
5SFq3Up7/xPcOhvy4GQA3wm3CpxTprnxw8Yr3KkKRHR92goBU56Vg/I0jRZ0BtwfsdEiJ8WRTPKi
vimUAPEsVAN5p8LT1JSfI6EwuWlpIwkKHXq3N9ndej4EuVYQDglxQyk3h8NQlcofOawPDBny/BZ3
oCKhQS5SCUgKbxJ6gbua/YM2zTKO7fF/scg7oFV/vQQlv/tVudveWasoBg5Tlp3Lifxyx0rfCvRv
WxnI3YceY17OfO7oIn0l1BGR5FoZNEfUnRVXAQjJhiMtS2flcE/F2I1DT0hTvpZVQ17Zupc6FZbB
s619vCMOV1lu9LWm07yTniKeiZ5Tgh6arJS+YndqG6JsSRzAP2uVcQPwQ+BSmTGrvdwKxwOsDiB0
jbJBcXwqVQNIxYvFHatuE4zX0iSWN9CvOOCAweoV/RgTjynw5y9IQTeFMk43eC4xu/iIDv+7JUIt
12JJfWaBxCrY8c6Apisq+vZ9RxdFLERCHJ0dixg2ie49YemQ1Wp8VC6Sf7Jp05zov8+F3L5H0ADH
GKfXUPMRfqVMQr4NUxwTEifun1dgScm5azhpRye8TvqQKlREyRkeJF9v+0ASW7XKJDwu0yvW3XXv
0EfB9w5mAFcT8KaiKQrsYD3IggE2qFp/DiwqkwNtE865p4zoSYawYF2Wu4ijMjT4KjyVEY0AxIgi
XSotP6AcKWFmBXmHlcjSt+3S1ZfCjtNYdAapwZ7slKF5kwZeEGXAC+CGkDJSafl9VXY7YKUxPSWB
6PQOVHo8UV4V4rcQzd5jSr/5QaggyABdUmjt6ynj/ao+wnWk9NHzPn/nI38u1A79PpW4qHbAcFLD
Pk9ZKp5it0YzUvL1bM7YCDb612o8kO9tM+C3kuqAGhH1xMCVLc+dJvVYUtsusrFWQjEz+59IYmM+
1mcEJHMtp0YfwJpXE9tlXyw0yjvBQTHFgSjfMByo88Wj8ZW/GBJled5JtMS31zzs0GvAjMS2U+wd
GShjbFGfKd7hOeX+zHcmpxj+aRlpXRDa6zObQiJUKw4cC6i892jvdia35obS2fvgX1gIZScpYwCe
aVNPSto6V66p8PhirR/D/7m2TP/bXrdmBAeMWXTt/U+g3R1SQ9BumxA3m9zzQ7aJB8vOGyXT7n9F
B5ysLVhTbtPtoSEBZv7cStU7tHKnCAhdQrv8nRPrXvPLUQ32F7brawILDz/rhljHXOUl38QedXRp
RPuE6ojJN4n6u2ws1wAp/kU4tIl4J97y5XWpPeuF8rdAmdFQe4u17Y5KqxVhMXAc7ldyLhG+ibyE
M3dXpctNW8NAD/Mc9s8aqSj0ylLM6TnHDiA/Z3SIl3743kyosht5EjwrwxdecVlDEsqiRD6a+UXI
p26jzP4tkKSv+eKYVufAkeYX04BAgb+o0gUs0pt6vzNX87vFVlSBM7WdmvvTK8C0+wusA8Efbc4L
Qjy5/hR9hUHkRrEKZinwUeGc6hcNTEBtLu7H7druFz89d368Db4guVgC6iknPhrZoTugC5wIo4Ok
Y8cb3FBPQL97rWA4gW948q0syOSN2CosSR88Wt21U4+9i3xbQ8w5haG3NSn8kNenH1/Qu1QL55oA
l61BTvChpj2uj81jhTUi4DC45rNWSQ2cvFkbzX8E0FBs3Q4Og92yOZBMkxA5L/gC1oSXo0Mr3MjU
KX1ix1syPQbq0EhSRF9FZgds3nScF2lus0zQyEdVpBNCv2lI7OuaYLQmOIZV8n0raDbRSDxwC6PB
sI/Ou9yPZZM4aMHeOwTD2AFr9Zaf3THRi8wWVPzVXenMXrV+1I1NSJckjXsnl5dSVTgXJKOQ4842
twYHoXFy3B99ZgbNC2mn70vIUFTpPtnlHY3svXixJf5XMCUcrP2umPwhx5MEaMoqQPkKBE/4oi+n
xERwptI6hLfFrDbjnoCm58miZ/d9uxEAu9zhtyEJIYrpeon4iNCeHXpg8J4KXQqBx/PTFMkP4TIY
IHFXuB0Eb8QC7Ip46pvfjCMfKlxtprYPgkrcuOPPsvgM1GZfexkszDWi/SrL3MdLleUe6jz1KF5T
BUxXHgaouS70wRdVRhXWqFSTkUJ1hWctBEQWGErwskSlFOieygflHbfmxdji2R0goMqcd6KrwX3r
Ld8wvVVv1Kb4a17RwFqpChFEktY/k9svndTSlfMnG4se6YfyfCcjHPVpzLZJzZtmKmVnh9Li/QEC
clxIIwemDJIX4h63Yz8TsLQRmmsvMxhtXgOj9gYF7vAyrLcxWQBQhTmg+tDNOTc7VgUaX5wbE0a/
RLrKZNBusNj8WWSqhCLQucDKCOuX1gwpmqKtFotnqH3srj7SmQIaeYc0Wh4FGvzblEN8ckvntHkl
gT7wmMwXRZdOX0lOwEhJdWyG1hpvmNsx5MjcSMxGC6iK+IiS8BdLmdLyIw3BDJDKlEqLRe73leIF
1+12F/Yt7GmI0jPxS1wHc4mIp0qpt+d7eg2jZwddIFKTAiC1UEq41KKO57o4TkxjhWAXY/5PTHi1
y1KVWiweldzfkede9mgFpE8xcSfzZHBph+AEN0ce1GphWAgcaZ33hTzjMcO2P8fVJm5AZOgnWUYK
PYwZJuiFDFt/B3THjV6xawKZvzLGaXWzPNHVTsziGLANtTBZ2ZtLf0SP2JyA7mvQnQcdqmk0nT0X
MbixMJC/ZaKaeuVPeQh9v54cWf9i808P8lBK6stnZM/BrA2TrplxLdV4+3xktstZ6SkCBOrmmR23
FoPcQSj5KwRxm8T0POxfivio/6VbjIcwocOmOzVTPqzh/Jq57xr2EBcPJMUewEmxjW0XE9jro7rn
2OI8IC5qnt00u2M5ECHzfdAKwtVdAyNNkRQ5jl84pAd7LFvKJwTl41tqJQaCmyCU0pP+YTyEUr0b
L7mnzvtqyfAAKy2ZA1WIee7yLsCw4DCVf+CqFEuVmCBzk20wUSy1h5WcW9qqzXyx9ttGSuwG/odJ
FNnW2qlROKj2hfnmIeE/HouAeiwSx+3/s21o3RYGCwOH9opMdmaFcse+q+lSKviRT0Nrc7EdQ+Id
omySO+Qu5lCo3wGxWfvLX41VVtp3CLsf5vsRr+1u6hml1mn6wjTyVyK+OjSVpSuqXLI8tqBII5RM
hEM9gUSyHQlvB225XwfUlDtsAjbXmbYq5JeKMs3kbp/UsUiPiQYIqtIWjrsExuekCzj4rz35Gq+A
vB7+wn0YJt631pNvqKQs0YMIvkQmDSIAq4CDhByK+OyyXxAJjB4EsyTFU0OX2nApUGGqfR4kL5Oz
P/HLxN4PRs7RhljPMSkIgFNbwpQJssYpoKjyt3ctIc/jTMm6sL6sUsUkB2oqbOH6VsqwA3WpPeLK
yZOt4evuwxm5YYNVwG/i6QvVgILo0fITQmpvJ8k5JIacwU1jihzICjuWT2lBzvv7O71LB1GrZXs5
zIfuFLMsATQsySDX6syeva8B4hGTJtLXWvBf9SE6EdKXUtkL5dpWDt8NgQzDGFwu3HnKGdxIGdt6
1F8YloIfXpNbNQ11roXiSyfcoe1l7ebY6yLzEJMVRpwlcGEJHXdXzodSkeb4ydaYY93UeQjHWVZ9
leKTWdKbbEBPZaQa9DAE6sk6VLgM8DjWsV+BrbwkjeELNYUlBIRN7cYGNUgs5GcckC5Qej/BXzr4
m11PVnkM3hGBzseam3B5edV8/WziRw2SqQ8yOt049KP9O/LWc6WSMW1Lo7/NcHmh63lNFbzpGJEe
80spF8zOFwsUZKDOHzKN+omD65lvSgB3Cx7gtj815TSb8p6yP+SYjmcqUqVPQf2i54yQYKWoDwso
pq+BPwFu8MWbgP7+YuJwHlHCEVgQJ7rtA/EFg5KH7ld8hSLrTMjYorjfH8jd+Bqrs1WweJWBu9xC
1pcXN3Ww/53K3jPA5xFP4d3LCeiUOZL/YcoN/O8DSyGLOvh4DvG8K0SyNLj8NHxz8VMP9EjdSHwe
Dsax/M1xNkzZha8ypRZXZufm64jZE9t3C8lYo9O3mG1GSa18uEE9PCPJVTExBDii0a//h+/CXv2H
pyycMzq1upePmbBqXV4J/+sy4/32BbovkPpZeh1WYz4PaVIDi8va1bafaTRC0QDeYZNuA9rkRwGY
/jh0bOtseYh8F0AWDYVEIkzzbqpwUDEd8j5YeXnBkdnvjx8+BzUnZPrDHchUwu6GmhIRI3V3NkK1
JgvdkjdUsAwdlA1Froj55c6Q10wl4KFOPcC3vq39Vej7pwNU5P3/uJZIaZWn01leUO9cw2xPp3Gs
PtH5xy4l/7U8JRXyUXgWn04ZAxmWhgFGkox1RkTOj3a7Sxtsu+nK/W13bVYdeyr1Y5XV2DPYq8CE
BktexrPP8LnfeV/odxkqO91DpEHna5Z0rWW3f4PllKUpJURskFdenonDBbv/fPhatF09a91070VW
rItFpjM/tKBCmDFWo3xJr6HM5VufUn33mg/Iif0mMhZsTMdKUDgvKktVACpqwVjeBQgSD40Gh/Zs
HFfwDMEAhP9W6ic8cQebmw0PAd9hJdap13ouCMPiiB+bpX4f0RbFpgElrTgjdJLqcsftv7aXQ0eM
jQvJKnlCP63hxuYjfz4EWiGxnp0IRWClZ6JeM1KgjVJL1MxWRF/ZUNPOsSya6uzHq6zSjU3+8sSp
37LG5Rq/wkbPHFk87PGSYKhnlKHp43cXDzt7bH6DC+1T7btOEGArR+mr0cSWFQSgsEGpkpRDm6ex
P2H11u31TbncMmHVr1n+mTEKIh8BgUH2oWviAkVvbXLo5KaGU+k/FxHwB/NndPRLqUz/FiMSug17
XLAlC/G/+p3TyiZwMe4NT9442/mPcj+RWPuMkEbny0mssk8FBtlcURg94d7O1vUB4P8QO/GpPOCx
6m1pLIODXgjx8gX/fjY4LvpdcLzWj78clokS5m96jDW+8m3e1xVAr+xMcWIXzMIjhNzezqwPuYxR
UKlyJ8zWVfkqrW+pAFCX9AB6fqthieRulb6M1SDRZ9ceIV0KW/Hhw/AEHomR2K8qvtYy14PrByD0
xgKlrGWHp4tAmxEI8xvm1gGL9RvFOw7lAlC2JV4o7PahfGCt6IyuBMX/03OGI38aDLrjX+uz/8Ri
HngITdtgcnjnywDYXj6F027Ze0t1OmOpBXpyC/PD0KGiUVHISg7kxqiu/8pDjvVBFq9npS6V99T1
RaoU2gR8ryoenNCKx7VrKIOVMLpfHNvhsrlVEJZe4X0tMmyfnk40uY7e3JwjIqPF5cNCHjl7kvSo
e2iWyoWOI2CF4jGqdbAJmwGVaD/4EbATlVKfcB+WZHc21BHLVs2zNdDJGelZRPIedsycUPPwcYT7
RdH8YKvAGnshr+u7duwCc9FwA2YDvhuCvUnnpShmb2N6CslUiJ70gpYQiB6BJ6IQMxu6+BlfVKHX
17XBsTarC9nW7AvkGn/x3uRyvEC+K7sskm2idAhE2KaRVEC/NWk87PeAK2a05grjbPXH36pwY23b
3m+IFWBs9hBUyCQmRRMRAKI94XXbxzMBSdj8KTzhK0OxgVfrgUx0nPwcJlnVdHR4r16kPFqro7uH
W3BrKaVqap2LQnuTyBvrwZ/e8pCl2wPrKkLvtzCESRZMtaUCVZgqmQri5uGSTGjFq6FBY8lKHg58
OOKwJU1Y1tWkaI+S5bxv9SKL/4X/3wSlIdz559KauVJ1O6udKDF9ZpoVYOHKHsYmt1iM7H9PXzAq
HRFNxvsaaAsft4nXzFtGc2IFxrTU/uT2SOb7gDdUymVfJia6k7peyRSrF7W8LQPY6Mvnhh9tJ5cR
vcSKTebZi26r/jpv32gdWdEmf1g4v7CKPWsKFLS9mkYSw5pGT01zenQ69HEBpmXTa0M4KpB4tNiW
6rJkCOIR2FcHHAhyq7+sjQvypXuBmL8mw4m9D1wm9KUNbmOwDONUFbnK9bvnHs1wYZlVDCdnCYNG
7yXtmMRSUAkcaBdlzG2z5RaU4aNSZCyfBn5T4bwvohGlaQfzbmSQijC7LT34NMRtxuUF6eELfIEx
UJfyFSoIz0R1hwedeBrKTsiQlaq3Z2PkgLAJdg4oatrjrY7t/o8alvO0ZREaRhCbDLscq5a6wLAF
l2DkK4WkcqMYKU77jKl3AwyQudyWL4cCBWNoTAP44H416Vri10mF++PoVZzgk6jPH/1qF62S7iLF
EM0UJXgF0ZPL4w5H3BNscztQxXcMzNgB7NYnk9IqssbXqHMdla7vtM2YRGg/ec9Uww8/OweB5pFM
ZP6U/0iJ97+XXbaetXyT79ciIm0/doQM8sUg/rxQ50z+CIZa0MK+IAOQ8tW4pcW4r2PHfeWhruia
AfvnxaCm4jtj3amBc4LhxikSWHwdgdO6GIvVzUKT1QX/ODxgzBo1g/GOlcd+URT0e1KhGmKwd9J5
siJq+sva79jGWd2cHKu0hdYOSYgCsyp4vUBFd91NRDUYw+HH4EuxSf7EUaWkltdUuarDpMMvCDIw
WkyQNrw72wASYmW5vM6BFz/sNo9da8WtenQx3FhZ3W6TULZ21oFXBwpll5kPd0nEC5FBTLcP3sxM
X8TbLdWejX+E5Y7sgkum1wNmk7FSWIxtBgpNKbGv+srfc6rcU/t1UxPI/j8Yk5nMpv+sSCgiILfq
6qZqAR8Y5WEH7Hv5CfvVOxiHNaPllgqhKEyb/TJ/nMfpmUsdV2mCyI1XNjyTCa28LtuSWihb0xyu
FA4bflVmSq3PGHI1nM60dEW0ZMFOipZnGJElO5Q8fs3Dm4jfZlvZ9T1yhQKQZ5jy7qOvEC8E/bgW
KOkciqK7IcRfrIFwohAi7d5PVaD2YEaLBZofZfmVO2ZMHHNKCcevlfIHMSogqXbgkjxZlgcQZmGW
o90+O9dueqh0aVtGT/ln+NxQVqzAXb3hP3vpHPxBFpiMOGWatm9LLM1uNT6O6BwobzFtUugsMta6
aS9T4uc6tqUfuabI7WNF6bYU+8bOVDevvQcVlQ/OFRBSj/i3nggExdly/MykqiXf7rITYKnBEGVz
lSIEud3yGAZmRtVOQ+WBYXCPyEann6pBIBOB9WuqFnC36x9ujIMiZQzxD2iu7VlynwD9QEdKOKTr
D2iq+dBnPERVoQ7D+2JGljMgbMKy7UNtefUAlPIgksmrKTL/Q7wj9ad8EmhBDq8CB/iZB/hDKD51
67fAShRsDZvvy6/oCLuBic9Gnnx1zen0cICgr3A+UgSvIFbBVUFSBRhbWJWHCSl7gLBjdHr/NfFQ
EJFJp5hDw2FiwK1oTUjn+HAyeUGROcFZndqinQKaZ2P1+6+YVWjIMjSqzuupY52Qf9PYvOUNXlQh
NCjK08ZRO4ILRIgBnZkHmAmmxuu29rs0booCQw+5khLtm+4fLtIcdAzNS4wPgyZjm19FYFjCsYZc
PeSr4MekKGnKkN9C0WXKX2ZNNgID2vgkXv/MxswZNq9A/0W/C7c70PXhQZqN+uLhfbs9/azuULAH
Rv4O7Zica2QFknZBKI1VOKj11oiOteK2o5qv16B6qONiRebskIjQ7cXILOkoTUtZqNpHBpPmEY9V
STXSzKUgYkP72NAJWpogHdzvQ5P/LdXmb3uAwLtXys9nAk04dSl5HqF82VFpgKpoa0nlTEVLYYjp
49hxijwS266WMva2qQM43zk+TjpQmVJatWQ4Ox33IwT7kxx8e7fOxDE0nF1UR3LI3dP/zOyS3fk5
mLdqHVQ+ZbCvKcheqGYqQ/B2o7n6ejDXPerfD7UsRHDeRJmyLZ44oPIPlvTb114ZOp3UhDvVG68E
dCzD7EF/fxuM7LKCfFpCdBgdxynOrNd6epVkNHdGMnKPUgHsEaouEXQBTeoDFWvSMpkc3PKjrg93
ElyJI/13OmXlhSJP0MTMJXAxRv0qQ8oahQV6jQHa6uzCqZxJhJpB/XO5XuYwJdV/C6f53DaIPEN7
djQ/q+guU0YNoBUq7uIFuaABuJh+yq5exETlbFkLGqHk3tB+x2uGg4HY3Md3qzfRbmMyuYJKOSHz
T3QasdpHZobl8mgKxUVCjxRhKuq4tY7jUa6jmlcS0csd0pxFBz0XYBU6mkBh9/xVOb9ddAajPguF
a22VrWJ6VVPZDfuPwbYutx1/7Sr2k7c/QOY0Bv+j0QSdCrxDFopyKDPmho1X51+o5lbsVk4iVOZx
CylQg46+CwOP33nDFstaHcOD6AF7JUTurWJE787aPYvLwWFFvzCrRxVZuWrkzhhZDZWgB1VAAISD
fy6dyIHM8VZ7/wUTbF5miAMrsphV8uJAYfKWgrtXZN4Imsru2eB784fR4bdi9qCmzYZoKZnALzfV
Ey57HjAaymRz7VLW4KDyhx3vv0gmaVCx1+zZwgv+mtvMYwFsB7twGX9pXkkEiXhvFviThuXSRw6U
X15BmHNi60S/b41rVDxCtNYpOTIk6k+avroE5iCzaFust6Op3PzCi+5XcfIZ9z64+jak7Dd6zbQB
tNqymwAWvBWC+1U5mMkB5XYJaNR3hE4QqyI6c9igIFI0lxJvkuTDjUO3t2ftwppa63x5RYr0sYbT
WxsFKvJiskPvqcUcd7OYzm+9c2rGXoWKE9GfCCgkFd53D6ilF2kRoI92V+H6wbXd+Mu0WlnwPie7
J9ke7RtrZfIxjFXJ4B8ocYmKE0++azdn7Qzsd1diylzgrFrqwS8AldD2M4t0Eit+nYWHEyW0ZJOB
Acz2GDjFoBn3XyIGgRZYUUl8N+ATwK/2B9QGKcSJmOdjBOLsxNeaZ6rxAA3aPiQ63gkfn3ERKDER
8cFO3DMdmA3OHBPaXKrXVo8+1hGDBqRyFkZcFzhSqlJHnuBGr/qUfF32256BsysIv5xeUa15J+fg
+76EpQHYQUx2jCglHGIqs+zHUbfIZS/ZMMyZDADtHJrmXzH3YKbzVBn99FOUsf+Sbtmxqph8+5TV
IG7xkon5dvnZYHRI7pNqCi4iK5suPXHaLRxKZ4fZiAf0Vvs6ZGpIb7QfHu1rWKGnc3pRXSuHDcHx
yjA6vIQ8CUiqwUfZn9SaTqHqg/woB/1SoSXBJNfU8udCZgZc4vAuoG6CxJFRyG42AqkIbvEqTbAn
YOITahArumxga4J91NLLbLq2ujp0ovEqmwRo64ee/WQ+K/6yrhKaXApOkpnr7ywgZYuukpB/8FmA
0AeNm//s1L/Ve5OtTpl0txUPjnCIHSg8mzEp5SQT91GjH+mI3y8HOH9H7QeV0eYgG8yizF2U4uxO
HZuBozzkS56sbJsTxf5TQW7usUK/fpmha+vk2ZyH9dWxjfdq99sacCSDzsh7Fl+Te4N4hR3A4/Zj
hEKs3DCoc6FlFyiDNhdIJ4n5eXrXIbRtKFtBd+BpdA2sTp5rM+EaRDfD13GnS/Scma3rgVeFp1xk
gbrnwwx2JwfD1jP/yQ0bvA0z+E+3fk+7M2o88GT6DwpQPNTlN3CVZRuh0E01N3atgstqIIn5N9Uy
ACX0Law1MbsPSgTr0RYv8K/1Ch9XeeiclaPb5U8a2VN4mZt8NClp5FFcAA5KvjwFc8A+QJCw282v
sxUqcLPcGzsjfa9GmUa1c4XHKRavF5IP+jrwwdvCHpmtB/3kVNCTdHrCZiX/+WBpYl+aDrQVf+cs
8apSF3xJKxJQKMmlN0P3qjni1hPmMluMGEtnDhc/xHTTISEImXpyETkca54P6JX50LErChYmd4b6
AwEEOQGmBcTYBrKMxNkHL73BMCvUaVrAHfZDmutu7qGietxQqiE/SL7FdRiyCSaNYlDXqzzxIaUD
oAi9/bBZIgvSIqmjfQdxAs6TxmUDnJ0a/F4b/2/l0+Y2VEqtfS+P2Ts0KY0Bj8Sfp412BnNigK2f
ZuahgX3KDlR2EWM3lKn6tw4WYQEZ61oovLREehUEDYO1Md/8VDzg82pz9TUV6DAUN03bmmrDv6nd
TC8caynUls0juCBKNbgFTo35SHm6OYiNURapBndmizUvNQRNSEnjV/Y/64aNukjPD6QKkY+TU466
0EavSk0AH4klcNmvtaCRXtHyyXP79Q2VjRnpY1wHrlkqfgz+pl5U3k+3geUN0X4quCORexQa0pLn
9uy9mCYeakqPRFLOErrE4aHsoFLZXIYOt1yh0GmFMVDMtLS0n0C9lgoALyBiRjRDjpTOWo2S8L/s
Au112QW5FR30FPt7v0ixQGWzmFAUDs4Wp9W79W5DiVz2etSwTChlNjMKcyjRCGqJukNaPaiwQSk8
ShcqgXsA4D0gqkR3vy8bAucMjN8qVZxS4KSuhaousQX9ysJoUalH1tSn2DlfcHPr3T8Ta9mOxmLm
9mVUTGTPTCph26nbyK6Ssf870HycSf7tPccZ0kxKDP8K1PT4kd/bw3fvjUOb/FJjarsSJtGk0TEz
ldzsQ5RZOIYqBD6Qw8cxEivwuXpCdW4bJ2d6fvf7ysJTPkK0EvpuVjrq8Wi6eVw9dzX88f/6uQK/
hirAeBXoqvpdfVmoJindGVv8f0cIa/AEvHLSrxSPjhQSmoSlaW46w/v8YvHlG1s3zAIzKtv9Aq3p
uqcV7HHp1HnFWzzlA1cfGY5Niw0W72LARD6LsmxI1QNWTCkGR6ZlbnCf982tVJoAa8DAnOW1A4uP
ak6RK98zjXPXCEAYez22Ey6pLj9Oi7eLZ/3JsZgzFtsyPHtEn/ddM2PDlWO8s54BQKzpEA+VmoGm
F2LHJjv9vewGsWU4sOoH8k97GIWgMll/EUYrMwIxHF+BMEaaxdNwn/6Sk0nm/daaREvHEaWaJLaJ
Nux+HgYAcf5d14+eL4P7PCeRVdq0ukcDEbNyQlDa22g6I7oAIkLIyxhIs7eRqx/m6zfi3SbRIj9T
FG+Bu0TKwj1+CnG9zZzi+hS+saenZLu6rs322yrNUw5mBs0Az6o5uSIIIhK+9dzSLgGFbViGo9AA
h9ez/6bXT0FtXxvrrn37o3CmNO9g+ycPIgwA7wzaylE7BwxyWCNykL30OZaiSFO5ECgyVz75cq/p
4XaOWneODb3xGtbmHo5mNRuZhgLeKYnjPv5I7Mq/+gNH6STPIWTLaUWDRZFeDJSo1RMiwQOs4uch
EahFWN69E9ZdbJO1S0qrZNrCy7IqARo1bDRwUPxZZOdFBglaW1d7arK8oV6j0iY/jKs/atN7ilHH
4mYPU+DGEuvDNwaeb7tKJrlwA3CrdABQ1mgUpOtT7NfE96iIlGlLdYt2yzNLdCmEwMBIdaVIncne
1Y1+qQiywmbMXKjaX86fPOR2ZbmXNUfN6pAAp/HMKZ2v7SWAB1rR99u8bLx5pIyzLMjQ04TNqVg8
M1ASH/U6jrELdhZoaorx2dbaKrvDYUOqQHsFX+3kckjC7a9A8h+zWXZQO4wkHWWcAMtVNK6UHUqB
upLcnrrIC1GClf3+5AblM1FNS6zSbQS1MNuTyGv7jF4Ba/b3TGlFUTm+EfbHBoeJLEClqoqUzQXl
YtbZkMee9lrJINmgNdfTOmQMoH1YJFo3tRzapShwf0qd4hs70l3u5Stn5G83saNklKeCnoCDdcY7
xMkiOj7IIT1zzSah8Is9qXxS6oFjePgFvxbCFsGbklFBYXAZP9z3jg81pQfpfUpZTFPKkBGcufTR
e5svusjGB5uCCweG/mPyVThd1A0wbKbB0U5tWm/na5tW4yBKEqb46W8zQDJwXmhpuzm7Z3Li9n5V
srvyUfsUPYX53CT4QnoT8/1OIxpNCXc8+Yg13PbgjHt6jM1NPyDFTZtoQFahDJmklQKqfoFGrtOD
Yzk6f0LpOWCz/dx9Z5wpsstTWBuYLQL1f23clRexdQUAitJrh7wKz/Hk5YbqG/93Cxt8XX5my+AE
ZWjYd63Rviaf7YiTPzXJN8YHgA17/xEdjFVa6UYUBysAKzeEEeG/D+jWzW6b8cOQzzkDF+xo/D3t
dO39bEWr3NWCEbGmuwf9LuRyM+y0ohBR7kIBM4iFhJ/NtLM/o/mp1qpaoQmMoLgGixQDFicaNwtz
ijprFfwFY4b0GSkKEyClqVxMn/bq0Z6O7/q9zWUQvacHE4CWisHqAjHXn4hEShL9Mani4aXoECmG
x1f0vB/I3B2oOp1HH5QXpY96XClsS6GvqSgvSu12gldLRUX1JH6mIJqwuDz+MlIJJgqofZO4jSem
Sos8m5uYgXYqpWvmJm/xInng+Z1zxh1yoXb4490TFew5i+L7SP0yvNqkzoyAclvtGTbnGmJ8Ksfg
cqWjjTHAGEpvQjqDiInYfsre/d2gsUkhcqm35HEvBAQgGLN6qL/1o29YdwAOia+Cy9nwK9OYSsxb
g9qqFUd4ly++1Ua0X93neCGZNV3DZRVKiiHXhoCf0U8UCR9yF7psSc6q15Y7lzZTSqTzJ1b75Mmy
AEdJOgFKebA8tGhvB0wEwzs/lQkhvGwlkSmTh8AZ9LurC1aKAB1v16GXaqMrckxdNomIjAcyEQQZ
GAukN7YEnle28dJb7S26iU+xruCXZqsgtlGM15/KOTxI9fdv/TphZ7HgbLq7CFg2zm+FBEivO4bJ
iPJQKLQhzWrw6vy8A8vGGKgRj2fmiK6K/ySgn3+ZBrahd7RprSlloQK/J0fJvjfVIzPhNfKFFrJs
esZuMrP2niBjwriTqGZyxMQbBz0Mqx5pc9PeocJcyLQ0BA6q3Ug8SjRYNpbKjMR3H8e7G+QTD677
oI0R8qHLAs08E8kFobDxlS1h3RVbGDSgGgqv/bv58jb7XWURl2I6tgsbJGESJIo8MH5Y69WT5GJi
sKREvVSd9rjl+QCiDW2wsHtYSKlKRvaZS/roJq9V/QdjB8cHG/ElsWTyHqQCFZaHoEwLUmE0MoIf
12yC9fygo1M7AKeeCfOLP1u9JzAZgc8CSr2dBXjP280MY3Mub+h5mJqhdgq9fPlbIwQTOzfSaq2t
G/onwDoUtx0+nykhv27Nm0J/mlyprr7QP+gzgtX1KOj2fyc5r9nlFyypkNSulDTN46ygzCUpWaU6
C9VDIOsLf4Xav3DkrJ0i5rTQrwzZcwg3mZBn7aCmAAPXoEaAMoVJsVluztEa6bhI7qdkh0a/RUPI
W6N6w3NneYJiSoipOGktInzSJ87KbO3/VuiFD5h5TwTU48oaMI8+fDSom8iPQpfNK0QQPNUOKbVb
jL053TNFNmXKtMd1mYwYr7rjAH5tFEHlbDHLf5UQZR5q234o2qsBlU4r2nyJ4r0Z7nTZbnAm9wsg
tQEON9xYuRrSiK5KZd/ykL3rjFewS2vM1G+24nGfFzk1rdP+IyksZMZtzDFFoUEOfd+XN0T+cJmI
OySwD22aW2CBd+2b+pf91Se1cVBStl6/oCD4mzM1B4BkjMOOlshSNjD+lqmhNHx+LVejUaHoAgoW
yP/SBzM8nTW+vzcvdZWctwh3HmJFERnBkToZl7MQchseGdFXKNvaV7VcHTLQceoDliz09pfEdjLO
v1K6nDPIWAGu0dS5K3PTknrLrut+2FkCtByw9K1nWm8apME6HXKM7Ai8qsM2yQSZJ0hIk+yvtHGw
nokbXy2Ss+Edg29k+RP2fiHLVxL6nfT0cjwW2T2Hke0EkqYVCHANevlSI37f2sbwP/bt5ZEoljOI
YlfWNu5q5oDWDtbeAz8JJ//AmBTZRILhAj7zFyYrFQS0//TutD3TjKMxd1DREttlPdGHIyGJLXru
+c7SOEY8MB2CcILvCLi11WLWRYBZKPFwCOjAFjcfem5bU034HhuwNTJetazB8qJxQVcpynZ8jGJ+
YvN6P116Bnlmdl/QSDuFmmwh4reXKy4kxB2KIL+vXFg3ZUPwa0boWFErwl8uLgM78lkRbLp7HWIl
q2uEA+2cT53BPB4otehcFGdc2aq0JozQIdNpmnG+lOsdKouOUuKDx/5NVt77EE2txVeJcq19I13s
WbKRkCD/JqKH9LUHTFRjDZASLWg5yv9UEoLAnTySILUECR0vee2exVxdhQk+xAQUmrqOak2XBWkc
2FLDTUSAQ9NDfnv5CxRnCY2zPZfxrRau7J7wsDax/HXYf+z5gp3caUGJXNHxCxHQGeJYBF9IL+qO
C/r+EME1AE3B4naHEev5/SGd0W9mLBKOtzlrBBx1Ek5l/xQoexprmh5KvmGUw7RK0LVxE7Cfs0Do
jVgoXN2pUtNqdlIVrRJFohJiZXCds+KQ7u2jkJgHegB9pBMDNo9Ay8Msb1a//VWN+c8ygWj+u4MI
1mLG0wWyUmYmKltNWSUJm1wKH1qi+YFr1RXZfwdd6GDqRjlmY26J7v0ss4CiAtvayEjEJ/xjrX1O
x/qLqcqtxbVXHTe4GkFnWCGTuVs3r/I6bzOr5GP9IC1UlGFv4KvGxyn2RavPKf16QJiYxhr52xMi
r1445T1Dk5VzYcNbPZFf4GlKj9vj5gG+r6h6zasijmMHaoD9wp9pTx+DEXOAkXE4ppUJm3PRzeVf
dCryOIgo68oDKPiJ3E7GuwruTh0Su1m0xm3cKXJjRN8LPpfN+EZQRWMCkX6mCIqw3YVeKPEIJe+d
zqecxuwa2SjYGP57JrSeO+qGpNdnIRZIn+KOKC9OXmvrbdjJxWAB/DmxiiTqMmbSctWw8ZzzOuop
ZczYHf/NUb8fQzB3zV0O7TQEf23CzeL1L0drsU92nQMEqfHAULo6KyruauBpS2blgvNijaFY3sLf
o3meIW451U8qdjU+iI2Y4KFVD8FH8t2drlFjpY5XyqO8dt9yi1jmVvGBhNkaCLsY5AY0d5ctHb+N
DaGKjI+YKX9lwuSDHke2zH7NqcT5EbCTjzzIKmcnGu9AhvLF2po1/IfOJd2LQanFBfmu/W/cVqdi
8fmgiWmCoeQt5OyJnHCOINn7MArgJQAdrCFGJyPcDwm0yTY/mgriMsO+sIHaDfCXC7ZPbgOQMAja
PWhUhextQflQFonmPs4WuaW5ojfNCUuVFvw/aWIJyIh3tBLiGZOnRRPrTl84GAvZ/S1TVW3D1Axd
6C+OkyDkSvSeMaT3snBHYCH1lasJMvQtok5RpOf99sgBRXOi0y7Y2Z5cb/v9RBJyyPX1gJxLd5hJ
QjM4v06pQ86/DiqjurOGPOrhqVTRmKJ11ib1pxrDSRlpX4CYXBxCtlYqt5CL4HO8HsE9IvAJ6rgA
pvlRRussHBDrfT6M09DhrUojqptbPPrkrBp8+rLheND47ItNokvgxHojoi8ylj5XdQXetZPyQ9D+
L7lurJkQuHmzTm6Io3osgcMnjWW8CptQh1V9fl1Dh3gycD49iTiBqcdgZ+kF0mbY1oH7yYGBUchh
J4kJTQg/y9V75j7bKKHcyh2TR+r5t11WBEoh7o3vL+/NFuJM2Z0Oi+2sBrROPGguaLfTcNgvdIfU
Yp9cfCccEOUneNtf8KYCIPIiu851cVNrWlI+PIlTwNM5+5CZhvgfJf3Bi5I8KsHi5Xr8h8dc7Vkn
GKl4uMJRHTECXYhSzC3obHRyGwBSzAr4mnmzoSpSxPA7I5AJMYgLvKmyEemsIB/4+X5v7wtBYYX3
fL4E57tgzPOoj0A9MOu2b7gm17NKPIqd3Pg0ldWKEnUgQnGNj2V6Wih9m29afLh/R0flFU5LlYjN
nLMmSIs4N+hoqnnpv0nwlTLWoILl93HsG9AK58iDHI9a6FDIQkl+WyDNcL08vrk9ZbXuzudqLriJ
PsCty6SnJnDPFqUeOqX+pYFnZhmN1pKtyij/wljikY9Pxad5yLRwriYpFPXVwcMIKdINFuiJy6Ze
BHNT4JsRY2R5jV5ccs8nf1dwC3I+vkrbSLf2OYEAmDRg/0leLo7gyGKbKNtwnG5xwGaODKrCgIHE
sZKPoe9Z8/R2igM5qUseZq1PYCKP389DuxcmNoPYVNqdLMBffaxKQ54x9wR3RoweDT3ijt2sZQhl
tygzL1f1tVLq0K84XMMhjVGciFlb847hClFwTlPH/ZWVaPbIC+apzd6Rspx5KmFrvPSHceFKpGn3
HnybUsksQm6j0YL9oZcIJ6JVRBvrnk57pFV0AlCYSLhavcuxGFVQviwGVMkvry1uXB/PynlPRtmI
sGO7QAYRB83nqBeVlBq5VIuT1aN5zDdB6JHNDkN7GDMw7Ow+HwEYQ2WMOtlqD1NCEmQ3HMBgmO/K
14jC4HlR98EQUbBzCibzM7bhzN5GoC5R1l02Q4meMdYf6hAHG3sQxt65Rh2ylpvHNqxlr3yow1kg
gNImBbmdpb8584JM/dLENI6We7JGzWTqpYk+0e0NR7IH+Aa8NjA1Mu+d+336VjdU10winppHuuQB
t9SX/VywvJ0nJWMhgV28wUizYZpvuiIP/0P7SSk3LKBNLUn07xlGZcr0fNrLEtws3wjGl2SfiwUn
gHZ13hbz9nwUi8N95scTlpxP2IhZ9qb9umw0RB33P7nQSyTWePlW+07CkqHIpCPuFHGblDZ9hoyk
RBOvIqN8oDTj12VMPeBLSmLzfkRJIITP3NOt5gkPf55HO2WIj//uR9H6mv+uw+w3TOoMow0Velri
vTzYrxaKUIMW8qjlUXtbG4cHe7McMyyDMktfC5KeDVNOKAdgDO2IPoH1+ZYEt+YbYTkhXD0U3zpb
tBJQwIATmcEXwCt2pOXhK1nuGJJcNajG8aOPWp9GNMrPR9I5bBeTnlUS+hzldvJdOIT2aIXLqmx/
6kCJwTohIhqq8RVK/T4+0NqqQe2DJXTNFgh7J2XjLDuh7uSnIqX4HJUB9PsLjFS38R9UldlfJbwg
ytSGgc71fdpOHpxrkbR+gfNI9QoK1FQR6PXTBsXLTTW5E2YANA63G2pZvfCu2xsFFXH5kV5UXMH+
/Dn3YeB4SYS457hcZNgGxNLAVnSqPKENFD5ahaOyeZRZiKmZ1XjIyBiBM3xa7KaaEHv8mMV9kSy0
b+zHABDf+Dp89Jqu/dmr7GArxtf1iDzPwsVtOiZKm9qhSHtUfr5svZp1kBb442eR1lv7rYvzGLJs
H9YSQEaHzy3OeXW8bvNzy9qckaN03JVip+vI7ZKqLZtA6eGR0ZIxX4AQB9GI82qinnSjhu+OExML
1Sm2syduQyQe5MiAU4oh+FSkeoi7sD6PZMz63B4aey/wvy+sg5RnIUIjx6bZOL7rbISB7eJ6xqCu
Whol/yiiuK2+6NjERGYjkHaV7O9+3/Hn69BZjIuwP/2GvEfKxoDNrWRZ9yN4FarBXTMXReYUnkwR
9bzBX6MXo6+uEObnTg7e1L1+GPo6Acxek3idVkO6uf0jbNmYJwiGjDLOZXahYfqIuKVOVMN8rBqX
Hmb6B5KlP8nkY9ky+MPaoHMptJmWEF2jxnXvJI9bYt4yx7/E2hB/LoSCnRtdqaEJHswop+7S6aLu
ufzEo5BPUuJfClPHwHHCm0W6kHjZjo8ur3udosfh4T0sKCUq1Rj/hgLq4xsTa6gnYprD8VOvJN3U
098xcpZmax+M61fc1HO+aLpm4x2GS4HxRYJMCQAhnDINvkH9yHojQ3kR4De+ZjxYn0F947hNgvlt
oc8omRWnAoQ/4JynGcKC03u3PjGU30k+3kERYDjJhdnW/Xk56+dtaSRH9XcDAs1eXdxTHo97ALam
B7m0IqMUh79E02r7GKhWWsZ0HGejZQxn2twbCGAQ6y2GLLSVPQR2qn5C3XxRGB1A9qGZt7/R5ylL
kOoZChQu+OsW7SitfjPDExCJBmrDwoCD7RXKgqr9ygg//94U21yxUGDLck18SD1riCN34Xh+AUi4
00vmWlgzWtvGdeZUDZO3/6Xzdyj7pI9/B7vd2qTaD758l+IdMUurf6GOKXOAwcNLxwcqePdXbu8V
XcRbku0LWfpbXi1xFhNORx4uPdkxEnLJ+cy28IwJi/2wi2K+VIa3HvKq2xL3fcEPM/J8TxQf9bBx
Bt3GForHdIr1MgtewkPy0wGzhXjCXGHgNGiBqQR16PjDEA11QyAK22rg9xvuPjA3RpzUwGkaMDNn
NCP7rt7FkzWrLQy7n1yPOLeRGLiL7aP6tascpa5DMZFKLhmZ3hOTyivOYN9n2IU1tBOiykNSy2zT
E8nrRM164jramvavfYTHd3CsuK9I93ahhNKmvXX0yTJcXPmc88HunzUBYS6RRWnyBJpnoanAu1Gb
iq9uJBePTp6C4NZBYtLhI/xhzD/4uj7JXGuQuap6BCNwZvvjEtbMcZjknAXCbOxozRsNKD0DOTdT
/r8ff3mCMUbVWs7ZYavdW2kEayIud26HLrD+SvpQUQpeXzx0ImDPsuZtfDWwa22SCVAl5APA/ZSZ
keMmXNf42xweytg7GV5ULRfLRX1YjYEuLqGAes/KP7p9V8pYKnSyl9NdNCHlJBbAqJkjvSClnINN
dUaKjLRpxI/kf4VEFOQsUzuTFgRw0GRf83AeQ17R2bUGEMPStk3h9BkllkUqP3PBxlkrtPhdzwJp
wvq6i8NYijb19+9Aqc6YNQuiacQ+tuWM5+0UgBIrOHOVbBVQpZRbyQC+GxrZ3raULYEZhu3yhfIT
6/aTJNj4wdrx14I7AHJVyrDNEkLbmN6hNeoqPxAz43McgfvGJpbrEUdCRYMk/0Euv57ame7eiMXA
lYk0aK5FgPa7tqsIxbsxnhR1KsxYuc0aTdm8Esak5sOxpzA7lAmIXEbbC+Iuk239YT4nn4/BVXVc
RV/VRZZloONK4CZprsyESsFkcKBOSrltVH4dMpMM+bNj0jOSfQpcjeFp8xtwKXsPoUrlhs+a99En
RKI3dTwgaYakSjpbVrSNRvW24AITY+YkxUZno7NWl4QzxwiNTk4bC5Po6n3cojMbdgedWxCUPuhD
lYaSsJsTbH+G+5PIqHaYfvNxM/WLFWY+vmsw+x/P62mNfvbXkq5UbIaoX0kbaCuFgg/xwQDL1ZfJ
qrcC510ps7I0Y7+mqqn6l4YrZWH9zvpaBItxST4MdB6/iRMf5eOvPXQASnHXhxg9VinOEfrHvOW0
Q0THy+C7fwzdxxGtpru7Uj9kAaTJLH+F4C5ppus2485ghLDZQqWmDlX1hYtTj/DKrP79aGhd2c0A
Pw3kXV1fXHRiSE4Sk7WWwfzFjxu4lGtmUfvibW9mWacmQzDx0reGiLAQSIZdrk3qvuHfPE93Uvlb
pk63N+h/ubEBT12Rgqzcrz3ZhZsFwX7iVjTkhXuJZy/JvEcSn/UMmnvgnrjr1Z5S7QvVpRJQ+1RH
rmldQzptftBi3psXiNkRq8FrHRdhqLAu3ExrbOoEGrnrJNIRGEi5wxvY4ZHvspVB2H1l26i6wNHg
BpUkmwVRzKdc8RJDcgVV02vVmRLZVqGTJv1Ng5SqW5rtZPrhvX1k1M6E6qkjacuCQqTVUkqmbVuZ
bqjniCppNbIWQBGMbjuUhjv70skjWJd4pdV/70tOPCSyk8Iy9zXrPZMbV1lwF+A8WESdOhDRKn+N
wf6bHOLzQXIJxcZ0
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
