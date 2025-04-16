// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 17 00:07:45 2025
// Host        : LAPTOP-OHGEUKK4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim e:/FPGA/DDS/dds.gen/sources_1/ip/rom_200x8b/rom_200x8b_sim_netlist.v
// Design      : rom_200x8b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_200x8b,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module rom_200x8b
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
  rom_200x8b_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19872)
`pragma protect data_block
LAZdJTv3AvNCXe0iIcSFKdh8D1ARctiDisTuUXbyFJVoZEc0laPJdfAiE6AHhjPaj7YruVJLwD/s
niePGbUiSzVnNd9p4pLJy7j8+Xz0qsUwG+hVjsrqj4ls6JJJXYEonEViGTXtaHIOkovvZtNDR17w
0uskF8l/dp8FS+qPBGUT+7Iga14kIcpJyLiLxjj/4GXcNZOZQ+o3NuZB8qzdJx7mjE20ot+Dh0l9
GTGSInTYdsNl34R9T0txQOjnD+Lx6BFPx6Lym4FUKi/b7+6kUHBKdGmANQLUcdyPWJFc3XcC+69l
TjP5DyMffvuUDVZw7GSVqgff6RLS9tbsHJ2h4WFBcx/4vAdrnh6bAbVxtoAJl6Voy7qrTqMfpm4c
WHq/4lFlocrQzD3p9MRrlMQffY06BILzSvQ1aM35/XD981HITr3ANxidl5nWqMv/ZflALH6YDUxO
greP9MezTjrEAt8RP+11mSt8612+DiuCa91vqmZmPYN2XRX9YNrnV4DBg+K/Lz3uUsPS4+A0b4lF
mccmzuwjfv5wFQgEAfAEbEPBgy7KYXp68qyosaG0j6FCl1oC03zpOdt3ejU2CR2A9yIyXNrh6sDz
GgpWznpZBow1dV2vyHT/Sqm2mxHPprDEMevIwKJXdpRKjJAB2HMMPlaoTTDh+d9gs6lkQPTlDWXG
oxYfN2fyey7U+/EmkqCDBan4++ZsTjo888auhhi9FFvbeghtaFcw8e6sBrUhBG5dh4Gty4Gj5Pxe
s7o6h90e/9xc1DUarra/jP7iWCCjY0EqP3b2FMvVMkhh+3v8iJCdeMRBBqVYQjTG7eAOgxc0OyHI
5IN8dXScJVmnHDIUJm3snTB3Twsmzn2b8Mczjw/OU7YfXkAjh+qe1bUfU1FeOfM95acnYTlAIGKo
U/Ml8RPdl9cdZFYtxDKjpbpWRKgDl/55+Its5rCPod7c+LXTzfzW5mlmhg0fZkXP2Memmg9uuoie
PmMopkUw9PJ/12r59UfBc0dMxPjrcSNelt15WnMsKikRK7X+TGamVLk07nTSs8wkW4xuT4ZeD5kE
huG7SPe+4cL/SWr/hQJFhLFOSz50BKjesEu4fLW8XyWZuw/5co6bSj89HcIGPm24s1Lrp057luXH
M4EEAHgYx5cw30wy9egXMN84aGoNNC+c69gi8Piwp6rPg9LkqnFQYI61GT55hrKJYaQlGY9xTKA0
8ET/bVR5Dj1iWnSg3YfPbN0l3Mx0jlF2m5XupT2LVG4ydv/0+wAiUVlergzQG7yRB91zn/KRAj9+
qv1cA5A1o/S5Hw6h4WTCDmMIaFjBK37wM1UuS+0ljka8Qen8SmYOy6agXzOXsk/ETtYxHtI9lbjh
+bRf8ZwleaUMfOfYzM7pytKPeOkgUx6gCQkTV7GFwv253Wrwd58oo5dY7WmUac9EaTA/hhxZXh5l
2SeG0GefR7kslUJmhdiZFf8Xg2yiVxlj9Jq8wXePUfP1K0gwUt4T5ZAgVXfLUSmHVgNm716XWBB2
209Llwe5AmrtWHVYKhG6+vgkYY090+fir/4doc3wlLI6ILlcQxfeDr2gd+4Tr5I0NmBT7sI3CISD
1nrDlRZKoHNbSlVfYfGkEA2jLo4FmsDP+ReqHMmc1NmJZo34x+N3PuHVoeilrrKUDJKwDZzN9j0Z
Uz8hFnjgptxpTRcHd6otv64C6HeC07uuARdaOZWnMruX0ciefCL30VXz2kQYLSM5ee6yRkEOkSR9
HDspKWtvjVHGXkwtO2uYdqmG5+5zgT8Cjd/HyxCt89uRwWnsZcvPo2Zepq8+fF/x6W/Dt0Ta/Ye9
fao9fS10Wmo8+w8vLacnXPcvlnUNVbI7l1CwMA43lEQRCg8Id+LRPWreHrycaxxdFRyVIsUWzFNz
8m0c9FV1ccf9F8aKnZ+Qcr55j5/hip/gPGMGSpC4lB7oXARqT5xH8vnVVC0skUGE0rdZ8l/suO8Y
9zINDCyCON7BJ2oCgTyvqqejQAM1Hxxckzg5AYl+DsDrb73W6N3CBjboosuWMZ86F4icvhAs1ShN
rN2shkQVt7NnUXVoj0ABQx7ladAAEruv6xGsvSXnnkAy9yUzNtyaQU9aMXx09litYkPbkj8Y6sAE
7MYzBhFP/B9HyrjsBueiIcoRFEY2f+owz0CebZzt8tCY4QbBS1hHGhKdHUDKTl9xKBODrhOHBW4J
wP0gnW2RbygL14TEIcOThhhVuOdhm/iZHjcKDByEfnIzwogWKj3BKbrRShPJy45FkAf0geAsdpyU
TxhIS5vrgmF7vUuoiue/JFdc+C4867HFPsP+YsuTcLe+7mE5IUF5GdEldUPxLxUNtUHk7TVqy/Ql
GIe8XJff4OnWtw/OZuIbF7aZz+drXMrjcTnCQl26k8vFj41xttj9NdF6vfSikHqmJum5GJNTVInO
ZbfJgbWIswGPrX7FGLMONJV+uf2ylQMrMMMiQMDhD/OW950GfpkkLESeNlprQFqOArmKEyAUMS3s
nJAujeuQow6688V2Ro+LJn+6UzhNpmIf/TdOVyKt55XZPAGKDu30WW7nlAjs9YH5KfDg7kiRUKBC
/2QOoqcBiIofwv4jkQIKelDrPeVY5/iyA49TyKP/LhydjXRt6anXyxh7IKU55utmV9AGA1odVC4P
v0ahrpfLRPm7y9jejDk6Wh9HUUoagbLawS4CAmSAd3goy/Ylu37itp49ELxvuc0J4QCOBfwl14pY
c93YhpQbwf4V1oFSNhIbQoMm1uN6qCAOeqCN8UmnLPOd2uOGJP8GSwR1yGc+i0CCKtJYvBTURQua
Cvf8A8ntPvAraCjjsZ78SJRJJ1tdfrr9tPfsD79uMHRvkABAXyW31etWNrlQspEeJwm/F6KNlF1L
wJoMHpu/ZErBnzBi2ZJFgPVXvpCzYFCCgOdFH/aA+mYH3WpaGfTEklpqucVeIjAM+yQ8xbC/llQq
O/dtOHDfD9476u9EnVPcR7z1yH0NM1+ZLdQFEIBqlkGUPix1XbhxrnDBr4rCNjdSYSC4qh+e9LU3
cV6Xr12LDNJmCnf7KZx7NU8Ti7IwxgDqt0oy6blhSzxUJVgBg+Zzstx8fi879Z3GYXnpGaGktLhd
+pDZiy9xydkBwLgXHJvAYa7X4E/D8AdzlJtmX2laAVyWeaoa6XFghSBXdTl17nFbLnZ+EE7KPxp/
xQmD65iqMgcIaTviHrSTv/9k87urJLfMDZJ6wZTwOtD8PVS01l2rNKOQgzZS6oEGEXWChgZkUM8d
BjjPFggqzUh04SYsAZXKg7VMPNTskjZWZkA7aVEX1uZlkBveWeG5s5PUtoeHvFxq7Bc1V64Z9tjp
f5hjnwHafpdgQrjZyWGgDCr6dS98HQIpypVjzYrThgpFZIrnhG+4vE61PnCDigTv/Tbb2gvPXcKZ
0lG/LR6RCRG60bWCbngfRLR9sLba4rKLHwBRDRaYCpKYPNCllnIc0WIchPa570aiwCUjptEiMUzr
Y/0875ga+v06uw3rHF2JmfxVHXAGCYV2rk2f2R2PXeqYGhflI2YEmhRgCdPKID8C+bEb87TopeOx
JPuQ5X0MYoI1OAc15osew6LlJBCRnmvBej7hpxq6g0tiI3lv53BXsI4PZKFIYocbXcK3dTGS/0tJ
ZBbNE29sjFXTyiRUCqV+3mhdhX4VBSKZlpIfyGrZPtuhDTcAj7xgS0JF/OUdDvqyl15a8cX2bJmE
3QV7oNRDm/81DJ2pqbB/sktnd4t+1aeoGh6wZGjLELdS4XXF0UU72JLDEazE2y8OERSSyfKh8fOV
iW4Yl/0teDpAV5OHjbtg8pzFMfYrVtjFjV/2/FSEWvuSWR/yws+vIzo5cN2e//j6kdpgvt+o1OJa
Xzdk4KTmas5FHAumew1X3I6g8QMHqQW49c3G9hF1zPjvavTb7KMYiNKL5qqKxlkJFBtWOGnz1ChN
M4pAe8yE7xLSPiti2tLOcelZD1ZlDYjtNxpMFtnUZ/hGB9AV5OCblLZqZ5JSKrbG5YWwcvAgyvnu
eVW0pTmy2uvivkxMXy14EjJ91JE+CA2/LJUOFs5u9ceqAHlelas3bRc3Va3K7k3Z2TiQV/OVPL48
sVZWoM/gq+UOGUP6LLwjoKTPWers3VYerhMxsScNngYKmWLeUMIqaiU6hOy0kKWG9uMutWdq4dP3
RxQuPn6wNZbI6XFC0xSX8Op2ZW2HAWxOUUptOsPvHiMwxpKBB1EF+EyJMaFrgvEHnlixnDGS0Vqq
ScOiNfEoUiSkKogCBN+bk/xH89Ms1af0QE+eIHysRCtm+qBPHZYkcSXJw0x5WnMGkBKpDOcb9TH3
GJBApavG8lWMLLEyHC1S3EzOGOOs/vF8FTV4t4kO/kltb3sX31h8zKTjcfdyDUrOsghYW4g2d8eR
k8m1i8qNQTBSEureFTUvRT7W+aKpCrGrVPUzwaC0s0T7h68eJVFatvjKBDbo1C17yluls9OLvNVH
aleDmdZ1hW0pBFk5efd9iWANRzvJ3YGQZpsZqGvfmnRBH23Szo4Gmz6A1sFzv5DMj5yVq+CO1avn
PUZ/wnY05GHE3quZKqBdrv1n8NmOhfEl6ELE+lCnLv3AUQNwi5BvWOzXAMFY0jPlF2YSrvH/mH/o
4xJnsGps/wiy0KW26ZA1CyTbFlXOPXr31hY5ItGHdzJPl7/0AY+InY3zraWjhq1VtXNkpfvFLdMz
hKSw5fgDSZOMkgcSEHuagkD3YiAt4GaS0AcFFiac+e2b5j7MEX9RMY4sXzRfhzqvHIFYaQexGTM8
qDSKHe+iTryWQpaF499tyKDqX0CNoQzot85Zcxb0ZoXMfzdFtoOLyp+P54sMvE7NjDeOlD+mXBeB
Oj5f04F7bRU3f3mcwFYeIhkO2HeVp0uSj72uGqQmbcxNAJv4wG3ECXIXzIwkL3lA2oTbLdWErJjy
zYbQn4PXmS64HZ2wLqEsnwD5r8+khzOX3Vv6N2hOHJHg/F9pxIw9BBzgX3+rAr7CJALj8rfi3MPE
hlcmT3lhANecaTtrIh3m3a3Krrq/fjjAtFilTSE6XAew+SHkR2J/UXHEw6vE+9gvg1RitzdZLYcb
Zo6DJBa27L285iK6faE0t9rzJZPJ+mZUGDxSC11KW+7+qkoiG45rNE+3mKN7oEFDst2d98Pw6cEi
v0OMuzSfBVgUOVClQCucexvpj1YBCqZmnJYJdtT8Kgt1lAaGKHAhyjZi+z7d6deitihS5N1FvoX0
TuAKJL6fL+/gg3n/LvSKKTNAAdNGN/tu/WUgqE09yLWRlciz9exkvvQADuZ62Ru3NhXJv1L4cDai
IN01To2O2LBcBTjdrFA/nQJtuCkSWK+txhFaVkSktqsxcaRe//OvemEsCaR4fy5KxRMzpxgfvdrX
LG9S9S4wr3xEDGPPwU8o55tZugUFn0ZIOE+2zU2/gxQzS3kW6K1VVbrMyW0TBsN8s7UeJNQG9EUi
SLttotTnB5F4WE0hgTxDa1wuUi38eNV39Pp8ZsfiUVfc1Zii82jA9bFebfQ0vb7DXgx07Z2PrDwI
liE0iOewKElv7YZYbJv0E5xFpDBRYUEmPd68EJSaMUZZXojvxmZuSSyMbdSS7qtAR4sjvAuc0uSH
Ae8n9gODsNBr9l/G0MNtaiwW9es58mjsnbIIICnpXgILQnXrJksRsmf/jnMHcPJR/9B3jq/dizcj
lV/YaKsfAcJNhCVG3tHb16X6wwGR88mb2kDHlP0gfSQFQhIXWtIQ2IcjUKIFC6jiqAGnAGMz2eSA
+t2iJzvqXUauCrfP9VDbv2VnWWsCVdG0yshaIIPXYbZdKhXKEF1+KEB+BbIk2QLH/WVbO7URmujK
VZoFYWfCcuhRvps+K669T7dcZ+35ePC4DdJQknCfGxh6SYxYcV2wiWi34RZIOX4VpPxhdx5qRIuq
4k4ZMGq1jSvORgObCu/2vC+sJBWiDdwOJHY6NUoj15qokOygaT82Z3O9Fg5ekg5oVe1EYRceZNgC
NOpAFUsJs1z2GImKTUoE+yz3bXkBnUCvSmBuRHTG7kgnbs+x9zpaRw1MUsom6CnZ6OAic1xt6RtU
lCQf3Tn8AVYXFegGacqaZjsY8KJZcSDABrDt9Mo+JuPtaMvBBqgVucCaoubGlnGNuQn1G1MWytM9
T4YPRsORCz8WBAnlJU877gJbe6jbbCRWYXRoiEbtbnPodjwAZzHjge89W4Rjm431U194IpOUVSOB
M0Ya7BZb9HQlb6RMyc3ewVj7f79/8Zp+W6xNAnhd+b/gaYoP5l8vUOy14VUDtVLa9hBzDD8gASBx
jpFRU+77Mx/6if3TBd6WmP2op/0uRAowek79mMm8kwIZlk5uEm7sUNnHThXd9vwqX6E9bJrJrzS4
90TxIbvQ6eRTDLYrNz2A6SGUmJyEH8tgizNNH5JwzSeiW3CCsZARO4Wd8pX4ojwAHT+pHCE7wMQx
TGZBa21NffSvcqvHn6pLi8mTGfxirYx8hZKy/xx0fd1W2Ur5N7TroT8+XX2xwmdAifrhp9LNahsz
ZzZBIlBsd+nGukcU1nddqf1Z/eT5+HAsjRdI3kQ5JdgFjzTlT439cODGiCkdHwQdDLOSX5qlWF9B
9/GmBE/zDJgfc1kPkGHpObL75RasZiNNpEvq9Lh9ABvhL9hOgvmhJ96aeFoaCKOvH51uQOzIh4Iv
T2B+1VgJXUyUVfELBMx1CxasbV2rNm+GtNKbz++d+pLHWJIXdEasc2DuFXGFCwaosPvY80MfULcH
LvQFv64iCvQBsGueKUZmhi7CAvuuRuDo6o0XKIo+rQHMJVJu7QmOPWpu3V4lkUZZU2dpzS6u6pBY
tJvGYXwD/2KnF+kflRze+flPD26voW+f73Q9oYHT3B5YhfjuA2+UABRisDow2S4YuOHLEObT/v7R
eHvOJ3E2MYtW7QjIitHojjeiwJTcYJZ1pz7W2XVFx0T2bpB6wrMo/HWN8jV3sOI0grxK35OE9DFO
mpKUY6vmz9H5RdtuwZadV2t5fsCdWQDDbNjG3v64zUmNPW6wJdtSDPbJD3SjEoA4uSS1CZi5w320
6oyaQ4BTakI9V/nQBVhuv9uWwmjZpVE8APB8tCZHUBuqA3UzsSzFjv2+DrvKYFGsthraKV/sfiPy
eXaOfD0Bt7cFbxkwZviuY2qvOg7BGtRgp/5ZKLmNL8qpFsS3sMtmx/cf4QFy63lerziunjpSC0cy
AaobSMMLJRgqKxFLN9vbfTxdEOO/kyLSAvCPN8bWnaV3eC/RnHQjfnqy58hmIRLEtjKbnuYNQN4q
fN3Kro91RfyzoYuf89ED910Od5uPvPpQul/+5gr29cMP2g7bCBU3nWlL2aPlKlyKPuIbwqzILKSi
HXMZUR8K7rNQDJIIAFTr8HOfkWTJrenuQ4jV4n/tAz5ZCqPVAPTmKM0FAHuMsVE8ZviU58n20cEa
43lDGS8ZP8Oi2qPZ6nksVafz/NRn8Xm5VBNrgRDzQ+Z1lf82FGX3OYKOXvjL7HdJogHunB8aBH9F
95dulsg3V3TW+XIlEtRZ4Oelv8LcZWj8kLFQmyRkd450MOK09wsG3epUkUtA0fY5NAKbIwQ56QH3
nzkTrH5CNWsJWUVIpm7MQemXfWy1SsSvC9DGRRlzVBaBmVldwRTNT4XOy047w3fTqAuG+J9OGul6
ugQnDTjqhZMDWnwg/qxRKT4fKMQDeCmfovSzNLqyKgkBXjIVB2D8fdMtm+O7XZ9Oy91gcjbk0zSh
uDfQ3ciF5gpyjYNV8SKoTczfKC2qH7aotlsc+ww1cS3wFNwZVCS0ATFAMzwxfZ2MPPZn5AKX3Xov
ybKR2sZFRu94fR4FjVzsVv3uvEF/XpFWddX4pX6TwpORshs/nlPjDZqO9LNYalzoco7mmBfnsvhC
+NARFyRnrmUnVoAVFsZIspTZmcN00KgRTk5B3Qvi8VIKAU7O0vFFuMGrIVo/x95DTwBC0uJ8O7r4
amBI6s3oMSrnsbBJxfBq2ujxDb6x9N7oMfTw6/7HCn53LZg3LFHBBA4dqic3uKAHm/xfTHby8yOQ
pFVukwBjZ84TzzY3ff85e88S8Nv2FTweERWck7pEOs9kPh4RsV85JPcef+1r0vqymysRuk7kFXqc
23DaPMLIHdcJufQOt1GZM7Lolaolv3o3AYWpHV/rOxo8zCTVTvjkdNYvvXWMqmOBjCgLwT9SWxlU
8RClL5ilBOpasuuxSlAJ3oQc5dQKddz1p9Ta356hopz3+34sve0tqk38sokQIrYjN+eOS3SHR4Mg
A44XR9HbMk9CJL7fg7hwE8avtVKFNOlvs086vJQkyFCiVD/lkHkvnVTI3S4bAQ4w6smV5Iqzw8/b
x26/OhydMZUkS6DvWaug/kuV1ZtUTlSygVZrAa9ZTtDK4Gl1wM3qSDO6x95B/DDAW8UuXchCFMs0
ZVRL8UvrmvCThjKSmuE0oEDHReNdvL3cNLpCMNzbKKKP0a6b5V/kdAppwyW7gYfXvDT9W5F0gcHp
+UfPCuCVIZiOw6flKhVvAfrZed+JH1yHGDqJ/sreOt53PvroHSrYOPusKsrgEttIQzK+EU0qs2qS
RRQMNWlHb0yj0P80TlKL9JrfVtHpgSoLni7DGKXjakJ4beJAypELJo9mUpsUbu8phHxRPl32fRA/
Qbk2inN9av4CaAfZ53T9XL65GlqqvaDC2+r8t7DS5JO9d76zyjc9sbbUcd836AhCAwrqYo6ESdlY
BV1HubGN8YY+HsUS4z6TC7eEt3P9qNX4bE+7gG6mJq1dp51WJhNy9vo4xnB9T5Wq/fmjWj74qlmz
D4gjGWnP7BCBZnumw2HIfWdGPwLPr0DWvHdYF+iI8j6Oybo3apmrfdebgGFgCb5+5vyxqejcWPmm
6NpIV0LGOuToff3BTVzAG4+GJgZlY2FN4NSvGJlYgKa8phYBs1h5ahP2CNhFUC3FQqcvWipq+brx
cSNsROYEejaS1EBFiE7dqmGZJcMLnJeISXPifePgZZfPOwe+yQIrjd+s+hHSlhCq5NIIuzqwvzuD
6F5Ujw48vUl7MuLXQtybpaI2OBXGhimHRvkUruPfALPfUhD0n9yX3xZ/WD/1UROFenL+Fv3rsw/4
Mlm1cfAgXH2EFD58KTIsDIsZ1ptAVFmAAgUqhnC5HWf0F6PhlTYFHUF6CQ8TQEe/jN3PWdL57v4z
X/ifXd2Y5YDnAijvNHmfQGwMm591jmzhfxNybI6jAiCrMdIMz7H9GAvEqQH5FVfV/qdvgicU3G7F
DE4pZv61teCfIZqYKxL3PLf2o2UQJOPpttoc3NyQ+/VGdlbs7UI9MmRsy+tF+n3iP556O3DSEVfA
sC9ctQS/TPqhiCaAWfr0b0QVbzbt6sBkzzjboCNVQevS7/n4Atmg3dbfsOdXO4da7dbh5er/yXHT
UfYE5aZ/3afYKPRf7E1W5bCHpWy5E+cI8rSPetgX6a5YQ6XHpXdpQ4eVwkzHtknOrI+yHPhoBP2Q
fSbzB01FPTCz+veeXRcFAEaM+et9Xg4X0gHKRCnxLYMxwT5Sds+MCRm/rtDdgN7u33H2KaqcgQie
yjCq8AgWbulM57bYKHxkH3LGs8+vBQDfWYRuKS+R1up54/kjbQQx2I7HOk4r1BKrpP2QROWBfusl
CBtCqOjjwLD+efCaV+cYD4n0CwlL0G0mBIvDQIqBFims9tfLIskEdPfgyuXcabVH2BmD4h5sgOC6
b7bc3ERJ2ohZJKuqMBgjeLGMRzsvAlStN0PNL6xsFKhEmAzz1EfFENkVbrHUPCC48hevjLOq4vIS
3lYznNRfgFMP0+FUabTpj3ih0bpqTxSRABmXoSgrB3xclnwSHqU0VaxUWVPlHt/AetihVU6ezoZu
2PRcpSJZ6yzjv2k6CtnZ1aY4rZBHQVFn8HMnZHyLp2UY6plJVCGCb5k7CT1pRCgHj9FfdCIp68fx
Ki3a59c709WdAEea9IbjK0QeZ1HAYNYa24GEzb4cg4pn9x8nOtL1T4uQAhhnJ/+MQh5klrWndz+q
5bcGgL78hI233zHO5JbP11sonlXbp6M9eLHx8EuJ8cmEm+V4naQc3F8X5GS5IpcNtuh4Vr7m0v85
Wzyg4MYW11ZS3rwYbeh4Iy8t6i3Z3WBNSyUX6SYo6nNhuKdDNHdrCG6uTBy0zJDkLSJ5Q2QG4fQS
VGQrvMZK99EDbhvdPOCJloPdJ2ASkTvpz/DOsckrv2gcR4qCkwyY1IOmMdQPAVGkHnGEn8310wXj
vmH3Wyrl+9o5Fi0B46B7c3vPtxw8Ug/5bB1bP5U9KKTXT/itQpaad4FApl9qYcYMZm/KpKBGBv31
cfVR8AIG3jpq2C9mf80lq/4OwnkphUNb8PvUX9H1VZObwGgyOGIy1TgWRbrh5Br1i94kOa6bM8GH
uwauOmsKRJApSEz4ftNkSf89P7fEErm0acbvYqK7XWFc+YBXxOze+pZhZRIEfhIAGnBOZgd+gwGF
jkVKNksZo9zpWPRKerITO5jh8vhu7CUg5GUC38CTfxq264/BawROlrgr+x8cXqohw01ngL0Xfk04
dx/LJrvfzFqkzCfWjywER6aWYJnP7pn6Vi0y4hTHxI7d7E1sh+67n6DvgAxfwpKUx0TZzdg18uxC
MqA65OE2SSizkFWdah0TbJxJXHhXKtI+T11FxfRQYVEwhSUb2IvOQIUwOjLczUQRilLUMmt8eUBJ
DEwAYHZCgSbe/5r2/3PkueML6vEuZVWvK52K4cRGDAJzznAN7E4YoLXJFNSAujpC1+W1LK/8CVFo
BaDA0sNPVwI8VwKUq5Nh7BK4izMEhhYHwOE96eNuURXBYnzJDy5gtZ8JYSzLX+aUQReLkccCnPaB
JfE2YzfYCVL5XrJUH+1hzqOxWaSBDta+8Bgc6qElOFiT1PnY9c5Vde9b+Suj2aexrp1JCy/RczuB
pWQ+MH5gXNCvmN1sC8GcGKY2tUM5ij5g54MWR0/yHeHSABKpOA/FL5n5B9CHyWZvmi9WBR2T3gcv
ny6w/vMqtBBgRgM3P+uiaecNSCAjUpQIzoKLp13IznzKQqAGI5itJLoA+rKfBf20cWl+YBy8vimV
f3IiUfSbAt89vYUf4Z7eIfM/B/whZWYn8blNhL1d7V+Pd44Wqi7NATIcpPwgA4wmjKpg57wiDOns
sahH+VemwhwX8WbvArJ90trYxm7rIajRAYvwNVmroabiL6Ot3HLKbwFuHL1AmSyH3z6rOVsOZs+9
XhDXuYEUpqu+0J6pMfrdNsTc2AIyhIKfN4vammEM5AVyQPwIrjjkpNRztE24+m4+wBClCqCsIm83
DmPRzstrSgwxjF+PXvSn2jIrSCgWPf84iCYtrdYP7Lq//wmSfBKD8Q8cw6gZVdduN7PFBVGwt5jN
qQ/y+pFwoXDaOPr4CYEVCutsA2L0UsZFyvfL42xZGK5D0u6X+rO/SzRDWY4/8rO0i1/lC1DCtX0Q
EW8+jJ5PD3bhj4PDoICi3FlBElv4Pati/HVOUGxTi74yiO46dgAF1zCVqe13SPTVVQ3Fsm4c6o/w
nUNWJEGYOnCAPlsJHtfkOS6q9Irbx59lMkLUf7HaxLz8em5g2l24Iaww6IeFZnRrMxox+gRQQKBR
M4jrpSGOx5gCGcy28OF+mirRAD1XW5QgTKbx0Mc8fH+GFVKZTGg0kWWKfcBlQdw0Lvv/rDyOMRW7
ploRsG1lUTE+18rF95Ck/BlCCIQ1WfeBZD8zF+rLe465WyMA8be7RBzvweZ+0NZKurAtQvOYs4r+
DwwZUv3s7ELfJ4hd8ykU6B7vMPjpzkdrzavm4AxkcfHs5n3tyud9+wiP6q2Qj8JwmqkFXH2vj9rE
uaxG2Pf+M/9/c1Gyl8qfUNV3/co4Pb9WjJd0Xz35JIDgFamIYI0Ps5vZEJAzMcLdLxSEUsLP7NeS
Now0p1aF5SHASy3IwPulQxiGOIcoOIcWcRBEbC1jeLtx+PhUY3A/gsys7xip+pX41B3Q7fzBY0Gq
Yzv+ec5TwfipzlGPzDswPXm5t05cLe6xSufRIqUj+e9wGTTZM9V0NtEYxRZw57NmtuJSjCXMAyxu
E7cwo36m1gpHnioQHzLWbQasf3ylO+PBK8py9MlFsilrfs8CZVoLitGQk4FZLHB+BxdT81lhzzT4
VXlR06ORpnTIN/6NPb3Q4+m9kgXm5p9jF/gbFca4XDdAOHU24wlAffAf9llZeo7NId45jMCuFuRL
h4ydKx8Gm2f4oRl7R0wbkQmoH0GLxCyjdMlgkrnqCwB2IIrwMRTXteMCOCoErmr6jqDKDyXlTYit
5dLQfskYZKE+xUJW3FS/8zjtCA2ZfLEXol0r0bK+HfUmg9byYpojX743MpzT/sHHRoyXJ5Es5SYp
xHVB4BHguRSFNZOJ/E3cL1mvc5VndIjTvsObO28YNZcLAUMYBWVG3zSP1+R2DdOmgvBiUi3gqvTU
/j2HjraKeUNEZlbElOAS4DViwp1ZT0uSGQKiFgOraOODe7WrZcXF8i5VwYSUfQo5VGShH4Eje1a0
aMq/ukNU83M+gwd9aMwgFhIoTJ7wd2TQetwNtm8ZPLwUemGidvyxwhZ8RyTLur92Xr3ZSuPrLwMr
tEDohFdBHy94pTckkjAy9p/HWpbRXa3uniM9O6HexlOCRZblqvPE5w+B78cYXeq7eOTqkFF+FGn2
0j+33U++VhME/+tHNqytQma0/wcfk/owLvHxCllp3KmWdoHOm1gqOb3imvcl1I1CD1u6iqaIMpLb
mHmqtFuH58KRTsmOn99wfIeiO3cbg2OE/wCBD6kFd3ODIgqJBMLjAWGheRQigMhTFRjOUG/FvmCG
TP/z5zvwIuEijVZfTfdV3kxYAxNSFuFmfnJDr4altcP+JKxpXyFdN9LjRzJtmPLozrMKnZ8LENKz
f5KugqovIsEkcTI4GHN34P6X9CA7i+2kvmn8eXwwp8m3LPwch/LQ+1JEZ4jxUu95aFuisL2iTMW3
zfrosVG2tKJnzYip7UasCCORKxNozisGB+6djvrjtixQRw5g85e1OlXBHpTesX01bWqAE30NqmiY
X11XZnhnfW5WHYJwQwXekbG1T5itjmftuDiw74ZGo1j5ikel4Sj/eTelX3it7EbhcVMIKRwCviKV
xYt5Ym5ffWOhv9Jv4n9VOxqt9rOxo3bFuZrBqPr62vIXfzWcgRqgTxrgb4Lc+H1z1e1WpTNhFk8W
wVLbAIhXvGixiK8ePvkeUilSdDlQ9QFVkADXKW+4eaQ81lVCNiUaU/pQc5+v7aA9hO64SNfiR5G7
RZ7YmDsCKEiRPzdm9XjT9nNw6/pLZGTW/nRVUsVAAcdQ3vO4cJGaFYfXY0Pk7xU0FNF+F7BVAtib
WWaGCyK/+LhXQUd1UTPH8NizgKWycHXRasL9wUpZyOM79rxYuW6A63ssk6m+DxJ71Kv4K9gLWvv6
X8K1DpmF8OMBwkFuoLtoe8/WBlMwcieS2u6AB5IiM8eO7tfJNZYbvOZaWRITUs52jBKrB8jkPJbG
PtpAe97Vo2sVumr3i6B2e+KaK5ygDINTlq5owYbqGh9c57uFlxpqFT5xS8kNFTlj33g/9tugGwwO
Ap59SJz5b0cluV1ij7XM1GTtCDg/WdnM1HFhcBFjwbZp85DOYIr7q+6D7l4gVhoyv9dttzlAcZ69
k+tTwUa0Q1U4oicy6c9OLzbRzTRzrivoiPI8bERvxwW52TzTtXoyYf7H5LiclaspoCRigiWWPyTz
dqB6rgUoCGkmjMj10SWiVkY3qdcYa8tOGzRWHnFSiG/EV3N2r1BF2cdEh66CLzXLGwTQ3urF+0xa
OI5M8F/FSLS9u85NAVa36z0f/9I/gdVsv2hKp/hJYEBWbaPCeHnJEdS/0J1t2qoT9hngh5DlY0tt
iWCWyPZQweEhpbhWQ2Jnljkldp6Hs6JbmioKD2ANproqfHLXUo7ja4V/t91suFaG6P4attxhe6Nn
sDT6MvamHo5WxML8RMViFNN6hx28SjKeCFncZste61R+3JmKvuXwtZmbHm2CDrC5GKv4qSDCMs2V
ETPmp51ihebmR8iXnam8Pty97qxfce9X9IpZBO2zn24Nw/7mkjT2rBz+mFZItyECpu1CWwmnn/nx
edIBXUVNCGLtS3KZSbfqqMNYBE39rbgjIyaYh2A+1GfFsCiduUnvxuMY+L4hTaer8V9ce3nRqHNk
syb6U038Y9p3VUF6JuGoCWunFpWAP3ZVn90Uqi/ehib0ypBRlS3u4ncvMjKwjXuAeyocDC3muD1t
2L94K9nQqBNDV0vrVkQIYz0vBx63iZj50eSFtNRTToY5lqKnJXSSnu/QmL2pvqRs08bQF2NLtvBh
SAhSRdy/R5Zwh6Rfh+aCBmpeYSfo1rHAlUVrRB4REkifDnJUrpPHHK6+iysNSLHawiER/EjmIkmM
5wQe9pGyjIzwJbMW6hW2rnVN0XykAvAuYc5Kzd3ttzbzX+JGeqxYSUQTdxHdEM8c8G7SH8fEznpK
XUB4X6gWhH1SUdaQMxzmlC4ArpMCmqiET55c54+GMjpZpw4NWcJayCWTgz45XBryAkXf0CU2TsBN
Ef3SKS3rZdk39RH130eMEcKf7IjyYEU33ODAxP1x7egc3q73VW1LodSXnztEVeBlguqa8mL/yZEJ
X8Z2SgHrxrT6W6JO+VahXVV+7MtjZmxOakSOd4+GnmmpiMCDmaOnmFsQFcagsgg/APo8dhj9hsri
cj3ZFmL/1/qIAlhACBYSGDNYCKWbHd4Hf0+O9WTePi/v2KyLF9H6fOMs5gOmKjUd0SW1beIw7hdz
lNuAG5Sjs5ZaOz6u5hZCk9CEp6yroWf5EbxyIGd+GdZvRz7UnhC83FH3iMKxgJ8hzM1bgRBFqnFm
Az9nvAIymVhriBzHJfzn6c62kiI0bNlLtxUxNVeYzN2xgz34/8PqftOA705tCdvG1HXDJBwnGwDy
IgEP5NkDYHaC5yH41pMf9lQr0zc/72UByVmD+jHeZtwD+rTz228pc1Oa8fg2Om+ywEzQ5OwKnDea
MsRkH3y1bkfkcCD8a39+IBBJddjLy2qWwQ8XW2fExq1WjOJilCG61v/yRUgn6s9y/hSupK/16OY0
b/A/PQLa4Kz0ujp26c4rkRQSkaum7NLJkHz80b0sMADds/q+FSqjghFlqMoiFzERIJzEIzu6PYwG
YdUBL/BQ2ziuIND+DSCrWOQwJjbYayRxSjdi8LazAPYZvKWCLRde+tkVhyuhgmI7TqtjDIBRsAbs
nekK6b32z4qgxTggXi2K0KGRuZPJ/aBbeZAglWopsYlJmyqfRTAjae6KW+GFilRNthyBOtty8arU
bR56cXGp/Y+/pI0AVkyjCqVWn6rfildH7i0ZpDeKQT1jLbtQENf399yU/rRJRK+plm2a+4A95Fpj
49F7vWyfXmMZNHPuuOZcd0v9wQcFWISS6MSivs8Q+XI3uqcqfXKkCNon30ZsrAgUKu/gNNI8s7gg
fn42wCC0tDOXqGutPdCIrv15PImjULTxvO8CkP7BP2c43ov6GIj66rDLi2PBYp17NTxdPcVbtDD8
yBicAzbt7qKbwocN0R9ipg01EdGiin3mYvRbElCI3TXLFcWNOsMJx4WIfp2mDw99e1yjro2W760L
2GjOfX85DDYtUxLJvAZRn2jT9cnOIAlOhnoDEGBeP5p1ttFwdaA/vYlD6i2e8Bat5zIxQuKet84Z
lyxCJBXIamNnrZe79dY2FKMQFspz0zS6nrxbNZB4/eHw6ox4RAW+v02qZcyB+nB4VKnnlDwoZd3X
DVKeeV5iCTAoBc/FLUH+hTB12fsKS415Cbdgg8x/gQ0KuwBub+QpVspZzmUT9Fl9zO4vw2Qe0aGQ
m3k2Cd317kBKmrQyJZjYapr4Tgpp9L2UMSPYxcieGq3j0HmVYMPaMGJH1hZxQyCyn1nQ420PBoak
aAw5Ne1sx+zXqVWM+7etuvNF+a281Vivl2MTa1gXYCY4eyuKgGZ1YaLMR9Qj7DSY8q8V5ptywQa2
8+RoVuRk4eNv5LhVffhP2KQt12/rKahg/3hkwTAJDDsIrVEBabso/x1Kc6Qtjz02+21AwuxH058z
/+LoHfdOZzFzpp7ofbrRCZAUcxyv4c1Rjp9wnrQUH3lcZ2SwFfVs6DoMSxMN//WtEttEUKSymiSj
5BuYJNzaid6dmDEJerDl6hD3yLqJcw2JqkdXEVzCWouOsc6Nt0s8IvJ4I+htv8xbM1OtkNxxK26s
mZSQGjhYrkcxndTiDIKvIm0bOKx+opZi2N+8F5+QiRpIUgyR8jYGdT/hmRoOg5pR4YQAmzNcKLin
Jy2shmn0zNbqMsiANugoH1Cmo/fFFpsESvr4SROJ8YIe5DjiK209PgoRSi0G884RNZAKYLRFMFPF
H4shqQK1fr+IJ6HeyNF255sXRXsX95IHoY9e6fynnptnvoG7cJnlK/0m8+NRlgLxWg1wloD7Bp8t
z9HNAJ+sidWomCfxKqW9ynn/YpyzuhUFNY58qfQ30zSG6grKf/Kwn/0vz6lvClCtqdq5tgyXN8Wt
32B14vPgG0KBFC3ll/vCDPPU4yMhBMk/t395goMyGuROBenmx8iOoV/bb/cpNmDHkxciR26octkx
HyRjI0hoc8/xTffLWovHmtPBcKP5WsaLg3JHQYd7LjflkeP/thtnNbH73NAhTjIGI7coHr9gbC1Q
8lgsWam0Q5ZSWTa3nf6tHXKjieupa2AP1n+rtCir/SHLVS1vr2CVgIzKQ8S2NImbJOJeq7FaJp5v
MePGMaKZrWa/U9cgcfKFKzFq9q1UqDtdx0hqgw7+l9it+Y57gtb+kDWlblUPcgyXGnVxnZQTJC14
yukeXdo/l6ziTU2dhhLKwvpdRRtuFyDu/3gXiRCRGPvH4yhuuq4Mxl/4wGJjTPjNTYHcGMSA9zIE
PWQ+b5FKWGMwNg78xjZl8oUvW1y8o6hc7TaJgffMwb0eyEfYEjM9tLJgGLXNslOWVXu+75VoMxQB
Gw84NMutX7rjxiihzWSgBnMHc8/FZFLS3w85h756OkxyStfGYNrgRjvMZD/VjvoMsCkV9uyYeuIy
BGdvBBmu9Agcmz5kQ+brLUVIhgTWsTKaR3sO7+hcNUeAGfWrGgwyrlNX3rNp/w1k7AXLxNeDURdd
Sztoo22lG5n/S2R5Ufy45xMEw95x5/m3rvQRYDhTL0wVLsBTrFIlniEHsDNFXoGy2xPt8OZFB5wW
xzfwt0MTfhNiH8occ2Z1AWdtXztUoYUmXcOFb5RA74+FQnhXcaMTfL8NvW4lbTNr4pOyp04/FU/v
TXaEzk8jAY2gii5xrdGhv03wzy9Rbx7LfDND7KdL730i5KDDc2S6gyjqxZqNr3bOOnedCyXqaMcn
3VXJiA9C4avcmwUlE4nU0WEZKn01z1KzE5bkXYWsb/6iSWnaicBCYM1dM+9IRpdEuJ4RNy4upofu
TDuddmO7gDV0tW7GVcpsUGgCluwHQlJ5jDSrWREtGGi3yQ/1qVO5IKF2eN2KczFaufp5N1yC9xGK
IypRbsFEYdXMUvC+/wTkcVz4OURtiS3Sm39gZoueXYo1lcqLwJfHdDNsmoxP0bE87a7iIbPxQ2yN
8lg+84GO4qwlBn06wtV3bzTnK3P9xhPPXOShuHYp/fJSWP5pICzXyZTQMHmIKl9UF78Y36xNFSmX
PfiD9LiUSRewoTyD2LUK9fFd5QTcsZe7ullHERLuxtdNg/MPa6XJRUikwqeyWowRV2W+4LqUEvVH
UKMrGXA9OK66Q9s5wVJmYphVgCBBksWmhh2RHUGJNmutnk9H72outKri1FiDn/+5vQQoMzdnARdV
q6iZ8lQGbuA+g+TT4Gwpiygi8sAsFHiNQATdwGRY0EryefQvQ146nHRuSb/cRKPDl3QSMYnH2qVB
KcN6Cfnf2wFwQhqkRCoYoLPpqfFTLZ+Mh1SnPiBIlkf8AQsYyqEIwTNO6SmVmGfh7nvHJFcIBn0u
CnYUwqbpLeOXbhJu3UtvWnnQx+iU5GFBqfP2XT4QtT2fuKdC2GnoRtDWI395izXCHZqyQgcnbrsW
um6Hd/yxd3JVI/MFzCwPIl5oWv+KfWiAwy8IPrjOs4cXr0YJ4KqnyMvPxa/QT557soQY5kIaEeH6
RlsAuKSZEUby3FeZdkm/fHuWbwW6EsfiE/uBHaZia/uZOjldz2tK33EdeL6UXVCg70pptqnFBWlM
U6w4h7H4GV7tV6lbsEsfprpmmOHIHjF8H97/NVRS27HhzlOPkOlfWszXTrrYAXAqLoa2ZArmsAGJ
IWc9J1uiUkCBzXlHK1zhwl2QIiNBCdcY4DHKfCZAqtKbd7KRxtgPWxkhpQq78eD42jLl4mIpgBWz
0ngAmOkN8kqv24/Nd8ZCaKQBn2/k5M6ucA640QxNbbjPho4eVuKjJJ0vYg5980RQfRWmQ8FVXpMT
qLJfS8GMh74khKAMvGWac8w4lrAODo22vzcSETGTLvEYthr+3hD7YI7QbWZpE2T9fG1q8sEm77tT
UxjlWIV1nas4D7G4DQL2FlzKNrRL185p+HeNLYOwqd5+oWYML0jO7erEuAZJPRnD/ULdJu+79l6T
meAP/LVp/jkj5vyBQ5nnhRVc/WjQMdSyBgkEqugCHYlMh5z89dZaoq63uaMdX+hbW770rUPenmEL
9Zqq76d08GmcmeDgviIxzGdSFp6+B5yirKiMjlrr+q1OGwplQpRxmGSrSRixGl9KNo755Xtamv4m
SERjVADNm/kTwu/w57ZHykLhZhy5EG+P+rHrkQ9sVeNS4UURW9xeQK4LwrmAkCxC1p0h7Dru6EPi
BXjDS66tIfra0SWL4ZkZIi8A/Ptq+i8EdCfuTIIXz9z7h++i9zNXEA+7p1DKGdVHFLPzP8Pk26+i
yjAVSOXfC7HwMgzGy/z8IvCOtIgK9wSWrpGVYUoNY4800Qf7oY7qRlY7POZvVxoHz4gjVcZ4f73s
SI4bi7gy7cGqOOFBQUGNlNomFJbM7HEjPzn8g2GLmIyy/34RuJT7sN7UiHTlrMpEnevMXKEqCFGn
aqweV/e5JGbigyZq1RCnTpwYV9IheowMTa+6WCB2qtwmBNL5Wmrkt2RfAOTx1HKehF2iXwA8Q3FK
mQl0lDWX6ex8ABh+jzy6TNr0Za/lEGd9Gm3wAb/el9I5J2jmqmILshH7Pxr4NOh91UIkLfFTezvF
M4jBCRQYJbOFB7DX4+BuEn+o2AUXX+fP9PD/gInJmqmF2ikT1vMxiytHZTRsVA/dmUeDSmO0egAk
kBUz0PIHUpznT58TDBt3lmyq6zES45QdDgOevmSUFLwJsa8cH1VpXao7ObiSKjjGEG50DkuQ0dMk
/EHJSPcGKfOMCEJFCLNsJfkVyORQdyWWBnbo1sJX8dvSqOjPEOco7vCTAydgYW69JdH/jgZk273j
jIDrwf346z1o+kg5lXgrXlb+LKRloYxUW/4IOG07NL8GrgU5718rzAXzBt5Lr6uHdCmLZmn2uOHL
0js1HYObQMLh0Wbw1iFGEr71H6QYf4TClzqapIuZu3KScH+FQ3c6qf0hdJcAi/Yx2T35YB1hP7/5
7y/3l9oss1Gnm0LU+BD+25PqqNGyw8SlvmR2sFcm2YuPWYZQXXc0+VNa+PtzbYgl62hO2d7JT/Hg
IjAx+nzhimEp/O0TcqJSNk5HFYhPhJWw6ftQsNdC8b/xyVKcz39HQSzny5Z75MwRrOS4jJosDMAF
maP9i4WycuH2ytbEYZif/WUAE06S6BbBQYnf5a6cKu9NEocS3cZx+t3+2qG/heZfhkYCAihF+c88
a2DnF3nkPIDiOZLktFGnf3r7rKeBjNizZKAAtjfow8RFrP/8Lyt6Qt31Iiqmx8Kj6/848aqEhur+
Lw4+nh09rEiyApXsBKF+5Q5Lau8IAxBzBkAMbrDKHYBx/oz4EMLcw5Bbak3v9h+48amchdCl1SE1
/u/USkkxBmO5RtSiWX+UDNSrXHSg3V5oHm+x+wwTNddjgwCLB6J6qdm1WPcJXT3WhWUCVuEFuJn5
+cIyCAusIO+ndFI4zvolXEWVbF7z/DhsEEYKBrqZ2aj6clhqWNkvyg1c0eYARRwcUrMPRQ+DZSFa
gsLKuw2UcI7faDg3LcXmxI56LlxopTCzovTKaG2u5GtTPQQr70l0qUSWTpQbQ79dnlmuajgSmTqb
opIBKFbR59oH7mf+h7cJzdEWowXkMKZj0VqEOjGvin96e45rLFH/WImiVz1bdgTGjovS5c47XJxl
ZfBPOypRVeOLPXfQR1ACqRflovJLLvC11Gr31e7PGQdj7njzz8ckA9HS5FalglY2g5fM9srgQA/c
SNRRRYowSyuLugiz3koYuY88NIf0fcXC1d7Gd43YDMo5xJ8fAFAtNs1hP+OOpV+/4Hz5MlDSCxe9
g6H8vphPoTl9U/oGKwwaqcxMcXrAN5WQR3iKq+k8HLBQdJVuygjdRGopGSwPDCDZafSvgKBQcM5Q
8ICE5Dy2ZluvpQrD1f7R3Wheqb9fAm5gwQnEMrfdLnkttTIpvmdspxF6NV8INq/o4OoVjgirOKDc
xX2d+5AtYAERCrGyTsnJRvg088HrhQWc+M2vmBAQmF3hQjuwE9REb19D0NmpYUMj+2cnMS4d44jl
d64oURoljudaQLLRXTx1XCwMv83TcbPxAYRrogOg4zD2e/jUIGUePUQN0kq3JMIebxQZeGdgP9aZ
CeUuIY/3u6afcOi1KQvTZK0eq7JKgMhjDgeI29FgY2bmANSz3GW99JNlnKfztynnCpkNO85NJB+s
nYsTn6yEtoAa79XZYNGbO7L+0zOF4qjn6sPVzezEbdW67bvGh57dVlTT/xJtfEONKM3+nZRUiiOZ
VLA0PpP+B1SCObWLp/zVLMrN+HKWf/pK8OvwTL+mQccobEyUU4CERVlPtiVveIeKitW37cE3bnpA
6FcK/FjFfnPcEYOcZ8Y5IkZwxFdqH8dzbKQ6rAxT97dFfIEcr46WJUXg5vNFGFcufC5cJd3ci9/x
Hw4B7ABEE3E2Lb3ULK9mghZHdyeRkK4ybclTK5qW6MOl10LwmdKoS63vpREJ6C6RE5w+4HAHhLlu
J1LipHGPJiQ/lpU7HV3lLbEk4wGXqe8Sl7wYPghFHiFVsyYwjXd2sQAe6A6LzdH8Ia+KdzjD3ErE
tqFZVXqXSu5OnTypDe6cUuOEDNIe67RtXhMVrMR3X8baytSkH5gdt+iwAzFN3UXxXzNG0AMoFNjH
NLgjZihNHUo9EH+vcV28ylg4jrXADtWUBfpHoXa/ZBvIOT79XhoGgQW7uwjiTNQwIO+Gda9Lls+t
cYtMVpxizLa7zxFV3q54gX5jdjBF7tkmTW3Y5KNp8OAmyIWJjKbj9RHUC9x1E0psOhgDhDShzRnL
9BBsMZYZP7Fi6imhJcHCZX1DwsxheUOSBeBYr+NJHgib60K/CukwZAROSHzcxhJ2j3JWOJdRneeC
9xLK8g2abZ3nPwSGNVUo5F9TY/6rFDCsBz3kp8ZZqR94Gp8zanNlV5p6WSnK7AOQHLHR3tQFprTD
87EBM+7Dk4EK2oShe/7R2l1w64GPsrUkizDLX0ad++bdQ2sdjK09WUqf1UHJcfHgjHJBEwA85X4W
+4vpjWLsVbKc2N1YQvhqL/oX1msJ8vszLWjNsTMMuZLuKqEVYLpTSxB/irZDELw6GGayk6zj+wlz
uDTc48CWBL9T7Y6X3VJf7h3nvF44+F7ycijyrNihEfTgL7cPgiJinlWrV4hN6N2h4EMoyWRZnlyw
FFenQ8bitboAbaEFQbhH0eEB2FjHzmiFJAEvzM1EM6m3U/+QTwvlxj2Xo1uV14AyZu8dE4Lab+aT
m33cH0vyFxWPRXSgjDzjxdgOYRDq32c+J3Jlc0wWHTFhv/C/J2Qpo+GLdXYHtJ0zIGrAbIMpMovH
My3LRKYNPHBI6MK+5DJu1XgSc7ixT9vzgRN7BJkTLnGWqmimxXhMZe2Koor9gjqouUFINEb9hQY+
a7v4fYmt/AKg0hao2HEsn7DClWDELXbhtgc1Zsi5aoBP+h0hrMND9nCWAnau1Kx7GUNtw4I29fmx
TpwoEZUZJtjf7eihLzYbZr3aq9ZsIPL/Hs/N0hvvdw/LEr0tkTVjSnwv+d0JqEyoD63bPJ3t4Rwr
62QpblWsNk1EOn50BAB6uC+RTFyar99jBlG2Ai91+Bo3L5rPCcqsN+zotApimqM/2K1Tjru4it0g
FbVucyGArda3lEy8KRYnHFmR5lQ97/SOHheC3VilJzAGrndgY9Rvu7I2MyEA8y9c571MI+nBhKHu
3+cj+D8J5fe2FgaPcc5Y/WRWx/AYH7jt7GvPZ99ADaXG18CLayaRaYzeYlj5xUFSd8r5FFvTEDds
6jAsDreupGuFOAwPNFl8R6/Is4eei3jF2FYpFgO1lq+F6vJ1k9qS/VkR1RssuTUJhICp4r9gPCbx
vc+Ais9Sg75ZcfqZcc9vMhHESnenigwzHtpVeDV58qa6iwbmXb5NIXZ/+kVs2aJbCrS7GLCvfMMM
zLa0eXA+oae77hntM+7Fy5fyeGTfaCkcxIuLMRSfEs0t+Fn2LCmIV9Z0plW7VBeqalfV+ePKqv2n
XvanJLe+8jRco3Xy5MFeVsnzrjTvgN/95LeiMRlfI3Lg8pHtoGvrtx9YsUzIF43nfbzG5hA4Jbd6
SeFLlvOFeioS5rRYT43J6EsfaekfUE/56tIxGOqVbGsRApl9M05ujt91koTFt83AyNMCPeRtwS6V
cDvIV5ZNVK7exqYP3R3AofbP2p2Az2TF4tlEZwx+RyLQOKkDjZi1LVijyKeUaeWfjyZlGiYHaOWx
IJDOH82bAQetsxubFxoKqBhwhNf34wnkuu0yC/F77x8owHvoC9mRzFb6/F4HWTjCOGTHWJXyADSm
lZsw1+NASKEGZc6n9uKCRBIvMA8t6ZveEaHn7sTRQGq7EG6P3wDie5WHcLpIcppINB81+7H2aVDX
GSuV1Nkl8iIf0LLsogdd9apSo1Q0GOMCA085pptRq+SfrwBmfLigOpPxNWHle8GpytvNGRmN8NXC
kw8RvnrJmn6R1KkxYbsGLu7J5+V4wHRPqJT1f7b5+uHOSHwjorKecfP9bN5HVW3UuVdOBAOjhdZA
14GtZGOEXLQUsZ1IA65aJfmGoALmVPS5izuIC8J7gCZ3C5D4UxqaHFkkuFqh8WBBHFHL11mZN6Ip
aaBzJNl1QHuU9cWklSg5rTcmrSoMmkkRHlCqM3Qtjl7NGOC1O96dmEvdsnwkXw1y4BLKACW57kVU
ZGe4lhtAbN5DWViDRMrtn+9Yorm6gMcDgDAd4z1BRgZm05EaD+y4f9aXiix5u4uDJsLOCH9YKmt4
G3443Uz0ghgyxVf0WNay05OXvIKWb8jxN4QMgdv3uO48Ai66yvyeaEO1MTqDHH09xRxz+jQe2CjE
3f8FeRL0NscAD3Q67TRsYv1mGaDGceEKwriX7ao+nP3xXhvHBmDi1YiULpi5Z7ARRDfN6xpoNc5U
i/cVQtVWH0oG7Buh0cJnbdMAMnoam8IYG9kAEp4eaWxYRhnL+5HOiZceXkK7d5ouLnCH9JcKSX8t
xfsIYf9fGCb+q969USNzbpvyJye2qfe8gDzoi/mj97M1T5yLS5Ie8v3oUv1d60RZXFVQy3kXfCuH
7SzRK/wh8hy9znbkxFlXfaEwQhtNmGrTfTcy/cYFNfYt05N0k2cnPawP0YuL8V/80buA1AtWjOi1
NfhmD+dPaogKd3nzojx8wGwugehogvEnAV4mpvW+4KKqvKCin63vV4mZmiR9fYKSmNZ0zVBRNJs5
iUe4s94niVgtpxDZFonGbUDOI7GExkcC5CUPybTduahjrusSCHD30E7TlhntJoIQyFka1ryEjAGe
ezXSkH+bso1yov7dl/PYWZoky15nq31rsUJ3eveODfTAycptmywQ6h5lf4KUAzD/PJg9IP3XYZRE
X6LOcMfWEYZyK/GQ0BFDwXjK57Lvice4FlHCYan+LMM9J8V8CVxNHquAjeclIfDiE5gZoX5C73Ja
A7HaTNADeRrvR9xxINcMdhkQVoD90f9mesQQDaS13y/ROQ99mk6iO1A1Q4FbUIP2NiLQTu0y7hHk
JqsX8W2j0MnbT13JXrGc1ljYDgYKztaZ6yO7zyq5V1ATd2u/fe1pihZX399dbjZr4d6KYm73xQfV
ZS+szfO6WDRaxqoZJlpfp93Uir6iuHwQ+XDDY7Y6yudHffuOMzhSuOxi7q9B28ByGWRd/GBZPUrO
gGP4SiDqFowOOsiw8n6IeDhB6rcXNXnNiPT1KbcxJk8OHEpp/vvRkjy6YTIEGQDqyqpMc5sCjUOl
BQaXrZeTgayncU4C9AvhTOGsuQlda3OFw1qdd6zsthbOc8XPSGFM5SPSeDUlP33FC7uHCYSWmkDE
zBiYluoGp0NqcIf/akFIz1rs8yVp4zvo6AJuMqsihKIGLaQa/3bT6z2ycnzEbgNlAcaA63yjjAOY
OL8JGXsUENv3XgAXuA4xCo4JplIeLSqZAqvqsiyiu34uEf9/BTv5aOiontVGHEByUtELATYSdB8r
soxv5o1vivB/NFODYXp9kbUlJESk6k/CSB4fqnbbnmK39ior22ZzZrD6vpYytkpW4nz0xFXRCd3j
DqsSIUnyOhIMtAmxPI0mytBmKk/9tS/IWLSqRC6suQSZcGhfY1eWbMycPA7hr/pfF4DEtAm5E+yx
FpiZtzLjK1EBfHkOrpHMeub3FdhgTKwtlLdmvSoCmzbllid9Kgi7lAC6yAspFBIj39ko6LpPVmSi
fN3XP3AwPuZMCcSQmXXIjTYUDyJaj6iP2WgQu3c3TtPadBu8MDBr3C9qqAZj6Pyx+T3CCh9TH5zi
tH5Kj0FbUiuYyWbJAMCkhp9/k1jD16FMV6mDaPE/87uGQTY/cD8vp40fzEmmwnI4pkOZs0EnfsuM
qqdqKpj17j2KO1wvzfu+YO4UxZ0HGIxQ2GeoVHc4bSjBz9mfLm2WfDwSrVETX78DVb/IF/h5nwhr
ill+z8axKw5l1dU6LfmWWHrGY6MRLEGoOfwYNnqaFmG369GN7dzZNZAV7Yeh0ahq1tj14vine3wY
JUF4ZSx6du7f7VWwsQw2Il4EnIt/WHipv8eX6UQPdse8KsHXDdrKaNcy4gjQCX+2yPkqlZxHClFW
2IXYYXm7ZGK2lRNsy33ur1qoJ0xyBzbYJ8cmGmG+XrVLQDL5TZUbSEg1iTxgzdkXuE119iHNMG1W
Z5ktYyiIcCCyFbMcO9kADVwUVqB2/hNDlqLCTqFMM5jT6uRB/lHhRP/s9cesNBw1IaIsgPAhW4PN
IEii73xo0K/gx0aY7JGYgDORozSbsTjdQSiTtxuil3xFM5ryw/h9Xnc8UANmYnFweb619sWz1tuB
jh5aUC4C3sOsBDgID2SGUxoD71g1qdD3JBaTPpyeUyk4v46J3fDJUAjqwLC+BBsyV6XcaEz8Z81M
Cs06bye9GNyJC6jFji9+TR/K3BrY1whhimeFLmM98c/0KewibY0xx5g2KhbIcvQLI/05bO3ubXmc
Sv/HZvTEv581BAlGy8JI7oI9ZdY1utuDsA3vSipEVUflneiZx4sl6RBKFVonQD1KakSH6fDqGQk0
Bd3Am8IH6k5YnU2Bnz9SbJfC7U1m6XUzhgsR8k3xmOEjXDpw6HaQo/oFnElCfjdwEx8qk2gBjPtz
ITxs2Bd1bRU1gkbQ6F8I9MRZbFKr2Viu/eWoUtdNclXvvf61MwuC9i3+7Wy9Qk5zoWe0rYflpy/w
iZvMV7M31vjSoxCyDJ6nfD20/tE7cLzhOx0sDty5lAZ08CkRC9NDcLtNZf7Jc/SVa7Pj3xcleH5S
p1KiR6nVNul3cx3Q1aU7XIJUObccBUUe5Vm/D5+qK3p1vRIqliCk0FDgkyAImZFLOxX4S2yUDC82
Z0IRqtWBjXX6pQBWeX2nqo+/aycaRGsOctUogGUqkfbWnqjHCL4BSQTdfIhYNvYlY8W4i79k2G+p
pb+FyRU9PkbxukR0F2f3FxMnvOzO7POrMA+YBQbnu9Y/eRVcj9Z4pd2Ob124uQM0+npXzHVIvTxz
XZPRhNTie9C0VvwbkhH2smy3qaYp0rrO9kUTpO/CYLhjUd6qnpQ0NE1zXGsCLAyLlsrsStWjWMOD
kUXtVxtA/Z50MHwTCmVALHabXHYANW03JWuovhuDt/obqx6AhIYWiF5L8dNXa13jB4sKNNYMfj10
xxXKq6E1/3pXwkJapOSrfuKAEUjy9XaLtcxrgk7NM0J3vMAdltuZIW2rRAlVfq6mUYImbiUhjr+y
8Q91c5WJPrGz6lmWZpBhrFSbh8zxURua8eglyY2BG0vqE4nWS3G8hynW3BEVfBU6XKiNcnCambX9
1LIqEa616oyXjjWU3UsfB3vwBhBqfVZ/sueaYIZMEMZLNnSl
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
