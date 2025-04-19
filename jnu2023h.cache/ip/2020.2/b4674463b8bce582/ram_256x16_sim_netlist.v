// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Apr 19 16:07:20 2025
// Host        : PS2022QTODVDOC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_256x16_sim_netlist.v
// Design      : ram_256x16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_256x16,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21264)
`pragma protect data_block
JP+5FSosl3y+csuwMfzRfSTydFAlhGCg2GFk11DsOhdSBqiMDYv67topW/0j9LlUck8Grk+zTtA+
/8pzS0sW08fXfFjEqBDEKBrOR+N2CP+LRHbqCznzZ7k2l5MssC+y3Ew8oS1R1xfL44kSOr5LuKvo
8wO1bVmiRYdYnEeNOPQqiaMqVdkOPLFS+I0CgRvFvvRGjfH1HncsIeGnEtDQ2KnDlr1zHRzEAiRX
YFwrwACN8E1YrBVbUbI8xQiY6AMO9dpK2komsatTNeUzzSrjMN7Y5dY2rhWup3vNYfTFHgf94L9t
fvGGmW0vU18Yex69h7YdJs/d3Dtau36he4xQ2NCCIP/kGD9i4Cnvwr4GP7+Y+10XUb30BEIV8r0n
rcVmVnIOfAFrTBFDAkJMZnq/QrL+/dGnShHSJKTAn5N1w6wZoLoIILTLZWFlm6ETCbjTZm8hOnMh
PqdgG/6W5jOTjhcjgXuTNSNI/ExZ9FfuzsZd36bQ6PViwwEXSe6pzhSZI0oU7REU+9JtRQeR95jf
FtbbwPRFiSXd9t3ZAZYQBvhmBmLXVLv4RsqMqj79yALAwD3iHtwxNnvg5CbMgg1x3+mPAwKst1lK
ARhZcW5f+TsfdEcXhpHn1aXH3PQ1YGT8x2kC8w4mbLdu9Ar172aZi37YWv4ZUUeEFPw3FlPYlRof
PN5hwobwvZQWkkXSnI9Be4WHFCuZKjJiPO5Gf+6TD2sCkxZ+v+1CxZPVnZcpYSqUGIREIiU1Qzcm
9buVBava8eOVlXicpMM4n0pbvt7Cum8cw1qB2DxgpBhq15uGYpkXjYkoj/gakhycJQTCliGcTUDP
xcgdRgN/jEf5YL6oAx89d5RdkgOIOLSCOKPp+0pI1biLpxdRobwyNd6xtH2vXNXox6rdS9i7srcx
h1d9+vlxgQ7yZGY8uV+9mwDPNWF5J8FmztqH2vc0xqfcO41Gl3uYmpouIEqosZ9yXPF/w/LBahxf
nUNoXEb9ST35p+ARuLtlMRJZ6yV40cfEV9q4NRe8l6YhKT4WnmWv363wutXiJHyshoxrbV4pjjBa
uv7+4aTx/Vz/WRddu6rcCgMoGZEGFaHN8eQwdJz7/lazSn2SXA+nXgcR76yDOs43HZfsVDjebS53
Wti7++X8CeAKqQZa3cbZl5wsIF9EStp+B9dq9JXLTvVbSyEHcj2gkdeyMvzliCM0dLUAQJ1Hslrk
5NTRu0/Ia4AEDr5MM6wq/TfgWjoaM7tW+gyEag+cMloy0i98eLmOhh/dt2LBK3DRQsZzd8i0JI3k
b2nErhTyisDq+ncZWopMPgaL2eludK/E3b88gT6SA2vbnh3n7soj67wqfuI29OK+KAz05CMXTZ15
WfzpbtgPRblNVPKE7/i9+ygScxqQhaxNSUtoiAz4lcgnpqv9zAIkh4Qi40sSo/8CYUaoIg+dICAX
Q3sQdK4Z3UtKkYba4CEyrI+2rDOcsWRTOFC52ias/2WNEqP95LH4EbvdgR5NBKrPICbp3FqxSfnY
QgtIVnIsBu6KIjc01BpGYUjzYPRh2MutKpSD9Lu1N1tmziR5JgmglAW+Qo6CX86I4ZPUXzHkL/7I
T95rAfOHIs/ctg/n4kuBP0DBCjqu0qykjnXfR/z5A+krgfv4LWzwERD1q9E+JE7FWcauxwfmRvKX
UiDOMKQWomW0oDiv6nxqBnVie0C6opipgbDG1/ypJIyb9G8hSoZz5q2mNxsLardhUIp6QVQzGb1k
y/py4982VwdYbFy+cQnXfcc+q5N8rBoEq17XKSgMHHccn6mYS9pJ92kvA+h/xarPJ1IYs4NmUHb3
jBagofKQO4XoyiIHVupfN/7k1WmVUkl89qTe5pnO6QCGDcpvhsMygnpn+erbcr9uh4jovAxqboW5
/ZBcY57Msh93nompZzPkfPCSPShsTxkvO47PRb6Jd+pVYd1RUSfQq5+eT9nkRgTp6mCNqeHAuEye
hOQMzVZCWA+IVjbcadeIJve0+3c8lvBNIDMc1eK7YCbph3NVnL9UcdOqL8Fh0KsrYO6P89hpNk7B
L93G3xzg+70kG02t20jfttUAuEUJIs8j1abZiIiNeaBEJDZEYtZgf9UEW5t1wz2YiLQhOczxw/EC
ICyW/dX+m125x9KztH0yu6MgeiaraiHiGvZq9o1aRCz9ywXTCx3ZpNakUh97GQPmcbIWHf7yWT+j
Ld0+Hra/hk3O6JJN5TVtyqOX/D1fUaa+rWyo/4R26h5dyLB5cTJUQD4qUCvdCLW0e/WGGMSZThB6
BUnbso4XutmbcmyZ/eIzRJCtfMN+H9KYngMYxW9PNvlEcq73qs+QTQO17AsaZqdX5kVie4qMiK8Z
PVxHzYbYEl257JTX6ibsgXWopNlBXMZUMVAZIC6DZltLF0uJM9mYmaMerUYCdUPBl4dMVaMtERUO
tSaq+aS9NQq+wlviPJTX3aPzyBSvXdI6sLKDZSHikEnE0UMa3K/CyiwzXMjinW8TMGzR2h3duU0R
iPvrswQTUYNiXbAcecKU1SVi/0hs5IfVhFz2GbLd1s89/mdM7IkPCIqeQS3WZPITSiasSVTC/uoy
JyRuuN7Zc+fEiaC4TfybxcK1Xc1u1m4+97ENuC5Z2fuVGGVtxhf84+c5ly7NGCrggqf8/GhElD/+
xFn07dlg+FSTOaoIaMJ3cx3f3gwY5/wXhXz+AGkTa4Fk8zypyz4l3F+PF0l/s9SeEo7/Ttfu9kgQ
+wfLRU9soh8+FukT6ozs81RapDDXwllaKYIAlVB9xMPkDQtaQCmsCDCSIRz1VnCftCaXfx7vFF5M
bBi/+0PqkYldkXVYGxl28uBB1bhHNA8ZxbnOXy8kJWPSN7K5GnxZA88rRbRvKAReNJ963nSdWhSj
LBjfd8lk65yUj5kzQOuRZpMRCBB8jzdgsIbk0ut9H1CAL/x8KGZ0YZe5O1TnfRscG8D8MWK49mIQ
DeEu7kNYK+kGKfhRlyOuuNtSgk8TkJ5fasVov4+Mf5+ca5SjYgTb/bsWbRzIjn+xhsEwkBbPIZ6H
iwcnx3zPs3dRZnkXN7s69i25WjqvaNMQagHDjfTx8chaTZ4bhXeuPPfvSV36AvePV3Ot+UcftP4c
omHLUPsS5Rp3twR1fHoQs+bhh3l4lxPf3P7L5KQJfLICoaIhlB6xgDa26dmcmTdrqu/R7kfNTjzR
rDSDhJrtE9o5qUnF6MHLo8QePxzbYKvXsF0B4hbsloXFFYJQgHc8Zr5IkeNr3MtCs6KnKrfq4d9l
37yodpz5DVuvD+qLw5ZRc9IxbE4be92FrFpRzGKAkOiBgIyheBaFKyKtkDjDSLYSmlPiMoLL6jP2
y1y2gRB+0aHGu+dZ+f48JquxzC8tVw1mjn1ZU4eyIhHtA0x0qgTY9wZ9edZAnzAZEeTXVBNXOoYr
lVQwigJjttOif5wCbeR5tl5mZBAeYebQi0ABa+/gAOHt7RzyVOCtlwWpdFjOPEVVI1zG1zjSGl9L
3CDXiKlJ5IxQHYrWLBJqAUkQ/euQdF9u0ZlWucZXd9R9J6Aq9MjYwdzSg37B1jZEycdQ0hnascYF
wKywl5OjMffknlTygpRAsMW1BoS4smcXCzCm57pC+XuRWJ6U/H+NyXPuPnrtpU0PqiLJRFJDCFfI
AchNI2M9oGRY/eOJtKr8wI+i1c6XR19ZiQ9cS/UTftnCj2UBxTM0u5vEk53gyqhHIAsXLlDdSIUf
REoKrN9B0pfT8h+sV3yWYJRe7bJqtw/knA4v+BOTGOZi+x60QjuPUeBJdMXdOFwRK+liT3q8B2Jv
X4D21YrFGIqQ60AyiKzBaxyT3/eoz3VWnSFgRAEAdmDDW4NiY1hdnzXUlKm4tWQ7jCe3DI+mHBzH
aaDIp83z2tw3iNnb4Hru+2wfzURfrAiIvSdqFl9Xc8aXTBCUVI+ZP/hSl6HkT1TL0j1LRryXhJPZ
FfFwCKfvKFK6WAWGVXMJnMZFnci5JZ72W31Nih1y49F+098aPm/qPgpxLKGABNwsqYkD6TSfzy+k
msTIq9fxfxkZNtgj7TDuTcVt5kjk/22QxYNuvEvUrCcZGy/RKibpSky3R0DBZysCwIWq5gXznAZV
6kRiEqRnuorj1Drm+cmCALlIEwV6cfgKUNQmtgMNeDPfYmahraLKYPRWSGBrazAnzhMPg0c0ZpYm
9vbc39YDELfIw2S3e2noXSV+0hDjwUDb1k8w5gPwqjYH/9vJcoQi+d4cokVSn4RghcBadZxJ4CHj
qirpL0CQ3P1thGMR6HdImyNw7DZ5VvY6DE/JuUDNBktuw+D6dstSGekGaZjQidk1qEMUmXkPNA3u
RS/LW1Vf399I8j9Peax7/FX1b0jBpB50SztMcw38YPXeidBkfrdy5ttiUcdgEhyvS6t9YCM8tqaN
kw63H16VDD7uD32z3dla6ELVjEUT1hBrN0kamR6Dc2uJkP8UFk/M+2YQLvhioPGxUKPwTQ5zlO0Q
zks0uN/yKU22BsZZ3x6phNBJDyEfqpOW8hib+voYk0HtOcKK9oetnTf8bdE8blqp2RrV4p8Pn4kG
q3txr0D8+P4HWtJbYKmREYpJqZNlg/ICh6DR7gEAhFQbuu3+/b1ld3AHUaPFeZdFuyntNrc5aJ7e
NsbuZRuWUqUDddVsxMfyqO7x2bAbYo6CSnpSTlavq4CujBH/jHWYOH6FIuZwn+hc0jdrQkQFpJR1
NrEubNKuCvE2CHxXJsBUje1ERLAghHZGiNf5fdxvT67g32uuGx7EUeiZZ6FjZLTzKp6u8WS2W+NP
LbjSeb9hooAWgOv/kTXTJBl+Tr9E+eBJPvzvmoiAG+92kL57AoqS7DWDl2JDENMDI+4SbFHg8Gsc
lERMhLvh28nM+9sI2C7j34D7VuyoY8u48Fa2Dvg2G8OvjxOvmjd/ZAxHaHQSV+Dpe1aY9U++R7dI
LL2ES1639tz2GoKLBGh6Hpxq8UVSqSiodVc4piifeyzyQFfCNDpofSg+zdL/SfKMbzylpzG3n8k+
2UmTYx3btFXpGGgfjmuJ672SWx5Ym2HTuBdEMmnJtUzTDxxUGF7EfFEdlxgL7HGrdtRlKpyVei0B
SEPE4N9OzwGxsxgOMsn1KXcz5QOkEOGYm44AEq0sf38nHttnE2qupzb8oXqhUMSRBwe6RlxIJkD6
e2X0fSmdq5UruyvDGlcPemyaIRNP348iED9BnfgPNKVcvslfhDDgiZXPHwmXPc0+4o7eaIGlK1jT
OyDP6SlVb2MeJXYhgKEx0Bb4efTlxVjMmHM0SlBxhjtY1RM6RArdFY/NJKMmm7fZBC4WgpGFZTGE
HZNlYWG3En5EiGp8puuLMAWtA4VoBKavI0jR2yRThLIi5DQNO4KUncQlDI4xBvJDzTeCks7JJlvw
FTSrV1PulYPrmuZ0RjcqkHrj/1zd1Rl+gpoRJun0+h/e7pE7VeZe0okkrhxgCiGJNAeOYg8Efxm2
uiVs7g3L/AKxzRxXVqPLwTFtVD3uVG/droa+v/GwBjzV81T5sm/LVO8DKaE8yPtR8SdspiGnlerd
r1hQDuDDpa/iJb/weh9MlaMWWoX6Je90+YI7IdGiwEisCHNQP1AcaJlLtlceGIUHSi0mqpdT0YoP
AVcnYLw/psLdhy+k0QN3KBCfU0vank3TQ5hChuhEyBz/hDLGmgmTEZ0N5hDdHULXMZYM20bwsRzo
VZpo27ZM/4xtdsp8bRsfrBrGT9VDE3EoBcjREbkGLsQg8q8k572dGhUMVzF3hS6EK872qNCSY4KV
D7oUB5yL+qLEX7ERdq+d/6MkzH0M3YTboinRbfUHqvG+wCykZ1xUcOoBCXMpJV0FEpjOTZCrJDPw
KFqKb7zucMElTxnyjn0q1v8dQRGoVZmjJ382jYHKJhxRrcutw/9Q/ivY4ZrC9tbiqE3fP5icmBce
UUz6evoMa9FKjl3v53MDfOvsa7CHqWxISRymwMbJgiCkwEOZxtP8nECBvyaZba4x6F1CP0wQa3Zw
f1sT/zMjUZ9d9OoqW9OiqeMIfXG18+BfdBZzTjthIdjejvqJq5HZroxKFR8yNtFFV93DKHoee/d2
Kuo1G7udC+LoV8sNYtAZmZTIFS0MMDQXfNg6MGiWnkGqPct8kG9mCvkWJDrBIwePIeV/tjw3d7M8
tu8AJ0jsGHyDzB1oXSk75dBHIwZu/LvIOnK0/mswr4F0l70irHIC6Pv193gSo4jAKRO0g4YkcWMb
iF5JMJq0uYsDfDuCDrEn31X/JquB/LWQq06gdxgJi/SyBYr+Ye9ZDO7UEp2Ah9ixaj4+m0pBiTCX
t9edD8zwVjqkG8KoBLlAnhqRP7BNACYPpgm+tCggrlZyPuS7dfl2PZb/TC659o/w44WEJID5I1OY
KhmFRuqbIIwR30iONYNthTprvLjLFqZTBHdE3FJn77Im+7XfoMxCaMcLtbSkbaApxcM3ERjyERPM
zaiZLMNfloTaWagVLGzgu9nRcaRFvPzbzS93cPh6GCrQPqKQtOygQYXMsGgjNW0ajo2jkSrUHi5O
nKEaYhn6l6OcuK3GaRROZT0KFGTp/Q66IYXLd3W2e6NiG/r7jB3V2wWA08BR2sVG+Aga/BzjRIew
9D0gC8W6CT/6pPcDUhTLaI/J/M1p151hYbsNDwps0KizEH41op3SsN1FcgxpB1ORevXDXoX2c+XW
WiQgH1ZpdcoXrt7e+AeqeYKrh33cXVBVQIDeKtuGLmijrJxpcwfxOL21sON6dlv73lEQCvu323gk
uIkI7lMxqIIlS3xjh/PdCfKEC4ofJR94acC4e6wAfWoVYbaC8f9E3E5W2bQ7SVkdiO6Gte2t4lk9
0WFH6VvlAvpJB7XnKyU9YRkLLDHT3SjxdmjzzvHMI0ziSpl2M40JUEvZHTBeA30evFg7DXyh4892
LmNXYxERY1fvj+iSH20AfM4g/j2PyogIMY14LciJ8dqZS6O201/knEjhfdzmp3RgWqWOBvQ/7T9M
Do4nbZQRLcKKgcXUXgxKUedZWkxbYsa4T24sQ0XJtDJyeeHZ8kocMxuX2C5ZdmzJZOlbScK/XqoD
lf8EQSXxukbclGOwkz9iemP5eblKjrRU5DwHRoqneuGiIuJAYS91McdgxQKO4PlXia7yQRx1KQcK
L4Qz3cl9lnhOa3+Rvdta7AzayAf1a0ksv5yRcU2oRe+M53TgWOspn5KGfTgsjsUXzTvb8ZQk2z7n
2/IgOrUmiwawfNclEU/HtADYGsMD8ZCO6/260OfrMlnJZyAvp1eB3t/X8DPlEMLtbIum9bZjURl2
CyjxEVZwbMJQijXWyFpye7ftIBhFVuc4b36l1LjyM0VNuY00zG0llhQVvKS1MB+8+yw7HR/53YN2
qT9dDC1JdCrlZnKxuTq2eUxtzH2cpC3Aq/ktGEHZYX8eHmU/3PiCs+F7UtHNXJ5ykrPAkm2bz0Aj
YK0zgqNdmk3acquYhGCOEbfSa4+hAEp1h8M3VdPN6BGlF0969VcvKhPPQ3z5Vl6LW6nu4IqVCDfY
CUsICt1HJ3LxQl2gY7IyrTqHdMkQbq+7rAYamcegvpFeRoZLgpboTvqnsKhiElycKDQFPoaApZjG
O/b4wBUjvUsYd7HvlI8k5+rfTSHG4lrGm7108hCCK+0Iszca4yYL+0IzfYWg2ykCPomKzM1ipqf7
3ZcPkvuKj3cmG63RwUu7AFnnXlcp3WjRG33yl9P8loS8agpAK5J2ETXksppIx6/HVwyiWrVipIG8
h4pgvTAaQMyQBS/pfJQckKa+HxHhsQ9zsPDbXhwtkpWau7UC4HYzsM8MRoqjXYfaddGG2QWWGX4H
sSzknA2hsT5SL+gy8jeorGmesOPzCnR+b7s8AzK5bQcJ39FEDGEzKud3nOSZzgLNlsIvPkGL/bgw
gy1E22JAafdzZfsj4NQS/mZks7wEcZjrCidNqQsoaaP9U0iBuS+F6XsNbCYmJhc9NHHZ1y/vkHlb
C7gUWLRkC7kdqXzSUvmiAhx9Vr77UVTf0z3lRvF+RSYDc+yky/P5ieY1NryRozLVXRFOVUJ6LddG
fecJ/4hh7RgA6QoPFmc+dzkPRHYoC2Z3NCImrkyZyFB4daWPw/7jAzXchTdsHaatXk1V79b+niTz
o2xNdP92JDMiftT9C00ZtjF9f6QjSrLdxL+KjB7niYGnRS0x5wRbFGZgBNmrzAbZyU4k6NoGKcQU
GdZzWS2oBFmlBzl90k485CM3hfsCieGoxOFRhUeXqazO2IrsROK8QvX87omhzSAjLfdf61rh5ZKx
DJvUSHS4Rq8Pkttt2OWg23zeJgEOiHhfgzskNHekewJKVrozo6LhUfAqnge9mEOjnWuLz1rxCVv9
sSbzXmg6NFwSogFz3D6twmu52rGZ7P7wdZbjgiKjVeAMaa8m9INLvgJ+io4cWAa0AxUoW6SngzV/
PuW2PJBX0y3B8i30X0cf1parPhtYWC9yvkYxZsQ9t+uOAJVWvPH9TbWCgVq3j3n3j6R1drPRG3X7
3KXq7g98erdgsLDwDmp9kmLVRkxZhwQP8aP4PD7aUHHDFYoqXV9X5nhP7/5sJHObiofK5yJb0pdm
VF5m8moUkRVW1ogS0Gu7xbYKSxxAGUne1oS2M3DmtcHt7AvF/nZAboe/tec68mYt08iLPHmDcunl
gng1BlGdQPhbFUI2rXx5LKi4fd+TBptpXZ+XMbAevHX3Jjz5nZ4cQarx5ejhBxfEBEkB8St5jvSN
6MfV95uGDqTsh86BQNLyRbkfUKW81cwP5Dhers8qXn+D7QN1sAZgchTMfV9rjxG99DDLlQt7QxFx
D6LqQkf7oMnurg7cm53YCsnNnYngZMxA0yr0eTU4vjPfGToVZMOHE0u0TiQIuGTNzntPDuPloShy
1+ZErvvAVetfeM3LQ+/yY2XtBR54wb6Cb6+yM0t9GuLMLsG1cKm7jGQ2V8RwGz7i5fj+bPoyLapE
O7NqOUCv58kI/my2LjNUAwnKAKqmM8CTCDAzYQbuQXVMQpUtngAXxrRWorqa+Gdu5Ragb3zwbKow
LOo3yZ458slruEUJ5fcUhOVqBdpizoAWNTB4QtmDqL0GY9EwYAlRKviUoX72jSwgypFTLsQFQXJ0
IBXWYJux90lJ7yhZlb7FcoDB+6Czuki3gHdmUgu6k69735KZkk2geXK2ZVrDGEOuk/zbOlOH2qmX
kGPqQofGunlFQlekA+uJj8teXzJHwRQpyysI8XOXtgM9hlOVwji5z3dngoq/zx09e6A6Vfo1DHeY
30YqcJnpRtz3mKHcWtyBhGgamARH0YppsNpEZdcJZsjTaUnCRAmdMhvVcmtc3LBEgYFjpYdQEXXm
dX6a4w5OlmPa9KwZICVRWGU0wVu5pP9PCaimzQetOXamYKZlRUFhuxhK34Mot1pQC4OTK9ncJfvZ
F0e+P2CbVo6BTwi8hQjhRyRjoL5OS6FgX06KP3Ur64htJUbC4AjkFjJnIiEYzAm7d328jTXz89gG
FJousEJvbRSWY6QH1C59zGBj2+4J626aitD6bHPXTNMAVvdbjgsqoUEAz4bGszmU6xvRknBdmcUD
DVbSoXmTZZJYAN4tMyE957HLhnH+dymeqzvs4hoSrIXeDI/g/cdsw+4k5P5s8YRXakBKudCdNSbz
RGyF2QMwJAXplRVL8ZOlRCTit/CDwbai+54f6XpVR0bZaFSGTGIbUfMeKpOtvAtoGHCWXrSG4pwt
UP3dTIYUyB0oWiBsmFdyt29N/KOTX3iIO8Mv0t0qHXhIdVijUlF0jS1QlC0rnfaqzMYU6jbiy/30
j7feecxXipe7pi4/zHrwQQzFbOT+YpnL/Gn2oB0OIi02CayqTJFqBOivfOYg+9B6eGh21PGEStKg
EGQ945h95VQvGbVcbX35QF9YPYt+wjmEVIqQAUVeuImB49+SFioL64jd8IMKELK39L+3hpb8w7cw
dHVWSmTBmeZq+mOW93GGqTE6V+tnN6xW2KVi3iIWLHub2cSch5+tVWyHMoZmbOSKRv8CryAKfRzM
PbYHY89I9A6pmwajxEyF7adr+yzltQDojTw8o5+MTeYL01VO83B3y0IKZ3RnnjjRMA2uxDFVtFW7
mjB1tNmcV+iTa2I5jS4tnFYS84ESbJL0K5xlnCl2RrZ0RDvL7JhfTFHbFyDYwAI0QtB/4j0FdKtP
1joIjP0Zb+VIT8z9rQsHvJwl5UgtV+Ae/vr7iVS3Xa4NIprfLCF1u7juTcBjgJoRlswvU1PsgZD3
6xnY7vsbJAjrpRH4coaabqEl4VE48M2LPFwUhT05hWPI+YL+JFjTUMlggUtzb7Y6aj6L3qwkkh2/
04F9Hh6m4pFTJbQUoEWrHckzIAFN5R+HM5jmbxGM54OHhKWrkYCFzmNDqD1Bgzi1Pt1e7dX/PouA
KelIGwY1k/2ctoyul7dk/4ny1vI677QA2xm2aDHlMZs19YuC7JefVs0NaMlqA4hNpNOajmwofaTD
cCE186m86w+oBqtPhxt/O3gS9BIYaMAKyCN+GsfBU0jb0uWlcdUugS4a+AUC4/0S1221TPSWaUd7
aXOmWdRzktdb3CK20MquSGRktFgUhEsao77f+UEs3I+TxzoeK+PitoWVgT9xi5SXoKen96CyimJB
U7rCQlR7M8EUWH5SqfWXBaGoGiCdOxf7LraArs790uYkXbztshgqYJJ5/ivxvOjEy8Zw23t0cRgV
JkTi3+d23btDYXv6ozW+AD7iAMXjl/u4r1PJwK9CeyLDufZqGBlpC/2zyVVuEbA9ec7dFWoiyqJn
8clWz6TLQTIRuP/yruXEok3OZRFKJgCnlkleVL1Mh/kpofE0H70KHtavkg1Z6GEr3BIzD12P5435
xC1D74dNsbJnAbK8UUoIhO8ZuqSpxO7yWRUHYpKlyh90kEaMPIITMrdVB+P7mIxtXhvUalkag7d9
22fUC/VVvL9QZJ5NyXmowL4A2UstyAZNQ/FdbW4Xzx+33pJNaHXmPMHMLnGOEZmekmK4aT/4sS52
p3sJwvU53CBrlHhiKeY82PSfBNAaZpxIjfxpZh8xTnZ4N3gBhuriEbGDDp3pjNsApyjJzLGntIlZ
WCa9DYSONEtLW8B84Q0xs/Y2OD45xQHYmYFa/wTJpPLm98JPWF4qmwS8mtowC1rlB3MIbjCqr6T9
/3mwaKLHxcaboAEQaMdGfycUnjnYqwRMIOzXtbpdFa74czUI/xqvjg/Q8IopYvqiCENql3Duzh/v
RbJnZmNfBmcUBEeWCHvh7HYo7KgUQFleCJIneDB2gLAjwkltQrITVhOuHXkAyPzy5rfzfJkFgQRX
0RltzTC+JYrIq4deOyMpK2daeF021KWzmfG9gy7elqtB/5GZinaqX1dSnZbzi4ymWUq3bVVSBbOQ
bS/wEgytgI1nYVlr+hBRHDdzkwcOAvL6VxFdivkD0GBCsx4YYd1JMb1D9F42Th79NnVGod1T7StX
wDdBqF3/VI5GIilB3gZ9f6sKtblXETFWIazZqrQd3KXpA211SO2RJ8uZtXKDcaDb6TKWOMLHtX9P
UzA3qVmdK3FvC7z4FnyuxcPhve2arb7rOnnJaCCUc6eMvyi9tNDNF3hUw1DLfWmeFQgNyzcpe+ku
U07yj70XAgWC8BS0FJa+Z7Xt+XVQXheVoFFnFgS9Ta7LmYTgdZj5x1WGfkJw5s2pkj2y2ROrLTlh
ZJpTd9mSmTCdaTyd+1cAEuJJzC2mbNw3P4FBSoo4AwgCSd8NsWWE9QNgcGzwKDC4jgxiXFzg5biu
8nTbarC2N/XVvdqqD8dwLrjkDKYo4I7QrknzH9bzpqD0qsSWIdgt0uprvJ3SXV5Wt+B+z0CqtCoh
BLjHXBjhP720WNBmuM3mt9Ms2NxQYpfjogtxqkioimL4iLnlfh0CB+4uFAEsW+Q1jbXwJn72He8+
5AF1Cr7lqpYEQI5EnE3C4Xtf8D/uOSNE/d7jEQeQ3O1Y1cxRZ+IYWEGXWuQYQTP2TjV25xuCfI/g
ar4xnKAukITF8HeFi1ixTT4pC6wLClrpDQHmFakdghRQeptBPzB9hJ4UET2kblPWfIrhGUS7pIwd
yubAsMrLWlAhJg6XD0ottIaSNeAgC9GMhzLdResktz/Pa7LVLhezx346ak9bFGG17Pz4ZR5IDUwV
l9znqGJyTBTeZ2UH1OQnX+o8/cXPB1P5NP+ZyuQw2X63Ufcnyy0KGWsBVhljXEfwOlLpx+onkNgG
0xaz4t6bjVlJ8lTehW4WsCHS9wX0Q9KEDvMfj4occtlugUIusdOS88SgVp0CR1rNS/oHxUki6sUk
+uMFEpLILhUHqKjzx2OUddU9EPJmpQvLhV8/cwd2W//PqwDAe7E/q7DjXvse4Il3J5P2f6NpQq9H
zIqKCZAWNuIse42MI75pr5yC11ll2dgFEkaUIAx362Cv3EhjYPs7R7M2uS2ZFwEdQ3iCr+Td0CVA
g4Qc60eC1/SBZ6PPP/r3oftED+ETPArp8EfBAYX4bQjOV4COLX2dBB3Mm6BHUC0ro0SCpY3Yv/ww
9WrNvkQ+exC6kxeL0c8wv57Z8Z8pJKX4H0lU1oEBnyXP+1dljOkxjAgLou08rS/TnYIvNk+9dISq
jIcXsEPTtSol1HrmJJL3phUttODuewPPaMPaIEJUdZ4zGLVexLEXCL+Coe9GNUoTVWT07CR154Uz
c9d4kI/to1+4MZaTYygBmgMJL3X0g7NnP3WT7YnvdgxKCPwfs0xBFFxj2dhs3/0IYFtbkb+D4SOs
L31IrxK5jksqg6FjYcPNx00zjq0t8gq38ZwbQ6M+ioa2Z0S/p4UB2a5b3kUYLfggEBOtE1IS9O0h
y1j+/GgK5xamLjHXorzmT6KZs1rnMtwVW6gtNUg9fjtxTZDFvYsfutZa0DAAHHIAugfStO5rBZf9
5Q43Rc0NZRp/m+RpxbauKHFjQnsmDFsnTw1o95UMYejPMf37q55CGl7SJURRA3FwXo+tMtuOqF/U
16u22AjTR8LPI2yfWgqBw6vUP4j7xwr8XrRd43ia3636Twlq1xj8ko3tN0XbdQ2IDa1J2QjCGlIF
LNz6vssdmFQp3OGxHT0HAmGDPmA67Yj0wvk/szQEu6CjhjI+7EWrN1XlrvXU3ij930ndat74L3Gu
STqFrvmv0LLwQH0MbOnI6tKXS5bAJPi61zYRrOBL6rTlBf8qgVJZYQlxUT5WXUzeeJIWSF5+t1aJ
OiY8iMri/HZ+K806Gw1VKyKq2uXClvfN531c82NBCFdqlDNifCuKDF85xi4NKEN1YOd7U1BCsByR
3QP7PcJTWexlIHPwL60NNfNkh4LCmCGSqDyBCpIUd5IRPu764bOuxfDF2XHuC1GcNY+HuVI/5pXV
4m6HrTVLy/qkZiVk82oKCy3siIxQzzMy3J4woplwCPyAQj/wrPwxh2P6eR184zGysnDu7j2QzNLz
u6YEEosF7GmHhNqTsSrp/vJcR/wI2NqETp+cAyXnCiYRkaJmQtyGa7BCVByRqoA6j14PYT5HmvJ5
1kEEtI7wXI/1h29aIitCzeH166l3PQLp+FDwVTqSsRkLN9Xrij8eXwOsoaOUfW0RiOCJ7QtWLp/i
/JCzPthsTl9juXQqS0s4dHfoidwQbTAP1Q0Rz3K1YbuKm2tsU5jwXpCufbfUn1agUFf9ixfrKvBE
MNTbZZxToPq4vZX0md3PaKS1FI7ImUc3vVQBsGy+xfzBkz4PpZVImTZuodBRzZnXEPEeNgTDMbpi
KIEeGS5/Mgy2UHtz87I1FVlE64fMCOeAXEVHumG6apt6rlHVfex7+qc5/s/t7kMFBsQz8C0VGDPn
zAIxQ+7CbW8OCH0hMBySAwJGq2oBJZ1wiMW/Hgm6dVIO62QoVD/wvCbSsqnNGrQv8wLhkLd+9oTx
Se2U2zi9LQstaS42nWf7uyLerwdpID1aqvldlMsF9/HuyxETNaX4u8lroFwdQxWb/GxuELVhorva
MnK+Od3pGKcWR+T5GzQoHO1mz8QJQNJgQ5EgAzP10mWgDEMfbZTjl89TVDFRZ2erB8NxzTFpAcb5
HILUVmZNgLmrwEwrzFKQVJb64CW6CHu11M3TRRlJqE/O/WozVgPTwSgVrwGYU2qy5BDIBCIaInYF
aQnb0Pn3w9U7aih79xqT/TY0/2mVhaKYQ4HNuv/q7ZP5YvSWF50E5MkX3PbvgD03pUs5Ad65fCRl
TTUUfb+Mfm27yejmjNFJTZuhDC/wbnm034lbNHOG820wzcS/0c2j+tDgwMV2HhUd+sDFopMvO0Bz
bB/L0WaqMsIVeaxDwLPJYVJy4clDO1rbIgCe5vmR6dr5wdGtEtBRLPTzmOzYtLKkeH/gjkeUzFgs
Mdek6VBbs/EN8VavW+4NE+AwMVQR2AiJa5d8hgHZdD67i0RhyE3cxmW3xZLu4PDpz7E9ubjXEhX/
rNZ8NKz1jVuGCWgOF1IEF4KmoAz6Zg2skSd8FZmKbJH1o+op4gNU/VxyihqMrc1miQMjUG40lo/5
dY7XW8kYs4daD9HUbFxCgC+SAvB62UrU81vS/E662+eO5kvEdLkx37bR/BtvLB3eYDtIURQZamUx
6GRWEuDHQc1D8ZvD61+UNdydoUjMw+kKNC81xun7OS4N3+rfJAvR2tzaBpBmByePSgEmqnRWVE08
FPRbcB5s06sbGP6VZb23dtP/vw4BcYWxJ/i/7m/0Bbb7dTzw1qRLPwwMTQ5iMaBfSIGMQvqymzwn
kmlJfbLNAMyTCsZife+anBxLAOSJqqofpVjW4XLNMIbWvIFW2Ot0hBxKYKV2645kxfzpv+CAIH00
57QF2M3GDaFyRp2GUU1+yY645JW2GBRqT5XjC8R+cEET+mdBUtXmFZX5UHl1ADIbioCXPcbJl9wD
uv4bSHFz/PdiYewVmNSIs1UaSEqjTAoccA6Chcjgf6Dc7KPXKVHXMA1fl789J3B1wgByXt1wIcE/
xPqcJhKCPZA743RmnsFkllaFCuObgFCeULxZiey6jPR2ZIoOxDQbxTUFJKDuJ0FUcacpL/tPx80m
jB0B8eaonz5hkfLAh89qiX+bTja6/hi3uIL5bPTQFGFcurZ5oPS10hhuCRexKU0P3R8oxZ7m7RJK
nyQdXMGXWx1kWjusUMPQqxc/L9bUnyO6And6kpMFMuvxFxLd6CmOZ1QOl0cJ/CbxEruyRonnDBGy
CrKPR7WqtbRh5QMfksIuVJzuhZhl6Vbce7ycaQS5ztw1rdSQ2W8HxGV8YCaPcAUROy5JKiNVoWrs
ID/v1aIOvWt7Q3DoXgOYbi5oxA0u0fN1gvzGayfFEIoIx5++lfmvFMMAI5ML7bP3v8XVb/a+QQnK
ErrXQAImNKNfZBNAAAjiCDgMKL/Ah4hTYCrCH9PESbWnwj5mFB/fdm9qq554NhaGIn30Evgf/Nkk
IFBMGkm4M1DTAg7l9bvTXuVm57nfD6K2wOqHbtcyEdT1LZPWB4ET0qLq60fXR3p4OVTjidxdHLTD
LB8ZUHcjgRKTYfEYPvltHHNSAPDC8brxtt1TPbfssH7+yJSHKEqA4IqKx5uXVPSy1lT3TSWP/Z8e
18aaEyBzFJ1BQrEh9wMH4ewAiUnpjb4qv0lGc/aKGUz2CbYcsB8lkvRm4HMoSWulZg99EbqdbnP2
NudbIwGimgabeWXfLpLtNzkMn+Hje2nWJG9lNiP6oezTkncOmSuqvoy6V0D1RI17LiYK654AS6Og
fA13Ng0nNFtRszT0jCG9o63r3AJVYvFZATDPWh2/Zf/UZsSOdAiG/fla6gYDknZMSF/3S252jrAT
8QtoE9q9DNFXVv41xfX8hnQZKFBdiVjRb+I/zdEz9AuOthoN4NlL1IAzwkFUXcCYs2xHQQxl8wVb
BNB5JymXB8WLk7cJfXZ78qKAH1sWgLberlIDlyNMMTP1t7N/R9FZTXwNNDF7PFYPGbmnsXZgeF4z
amccPp1RFdXvcDbffqA4clRi86M/Qgdo3ITo5vzfuuuswI9Hm7UykhHedae4sM9rQV137x7vzH95
zMe3Pr6dS58illoPR1AGhBUbzMKqcYJfTqI0tbpOUcA20JVjFoaGP42yN4Zd4NkDgXxyKOD3oNXH
tbGd2GUTfVTzs+uxMQCkIEnUhhHfYBp4kP7ooRla7Hc26Xunncxfa9wuwyl9ro5IsQQtok2BNf03
7oqGkJsxXFfJeZVZhARjnUfiVKG9DbhPM6tFkNLRbjjfb2SveXdKH6BJeiAxvBya2kpIfkiUHXlZ
msnlQhMJkILMXxDTrq6VFRCW7JBB2fdzUdf5T+/d6X6AEYG0DrJbfVyYzDo8XbI82RSj1tE7NP/j
VH+o9psia7/bogitkinPakL26TnjaNX5yQMwJhQ0ZaPWRryFp8+wLlNHmtfTnHd2OEfaTUCpg9Rq
7DHMIugEMiK8lVUPYGIDRPrYTNocU3A7nN6ShYHGlh/g1wWUXVWKsXkJ3a4Abpzrt6dRp8OvkI2V
vZUt0zhZeLUO+LcAhzQQRZio9sgO5yqUbFrBDvFcna/3mF6SKKwT/PLbxGcDwdOrWsGPwnytQuo3
nOiXUGvYD1e23M4d+s9wNofpkisAO8ecFosJFuBVHiRJXl+oilSS/S+0nBtozP22Eog+fTe5OJ00
1cRn0j1vD0Sizwm2nWnlsn5Wh9uLTjUz/NXcCwaDI3OjofEumxw5TWtrcYo+MykjMOZL1r0+ln3X
qciNnTIc+ovJFqzIrS700AVc6+tYiV62LwaSyTTgU/NoPNDuGtIQFSNbvjwHdozF6ZBrap8tGJ29
QIA2J/O+rd9Lqlt3mk3KbHYPcI3Wb1+MjZCf2PNdnY6rVxZW9PCUsUxLVqIf3Tbf19TzWlC4IaSB
DR96GEKdWBJJ1QGFyAIbPUU6fbZs3bbsYb8oRAcdyQ+zX7ltnVd5V/e+yRvzQU6+jUbjwcLIEDJ+
QjW6pHDKMK7MxseEwbXQR8WYsvfubc8fqmuqOSAqPRbQcD/cNOdrIDUTSKPQE+C2xRNbDACmj22b
UTqc47rAXaRTxwig9cmhzNwEFheHBYIgEk7i5sd3zheWFSHbpLiOMfj3jdDA9NJXWM5+uYuQufeh
YuzWOIUndMIMKYHciZxAfIYxwH9ePWYosqB9dJdiYjiTPABxEXrBvFjAAIveO257ku98yf+iTaoL
e3Z6+o95EzNvZZ9zk9oLIJFQys4YDLALhHVOPsYnKH238F+rdwgqzf0A9EcjnlXYMy59cbI6Adqt
YFGk994Vpq018252CsP8xK/WAdKGAZ12zEBvPfq0hZlgNB+dNBKJ41VdzcHMUON6tbXlGDIRh8Wo
fUJMOVJVSrQCKUwRleN1nsJxMEbVnjWPi18O8EG9lGMqAGhzpd0GZTtsQRlfaX4YdZvS/V1m6kDc
gzbiOEgMU8P6DbQTo4w6ndZ+T58hHViaUl15ADC5kMZVgM1sDTyMH1zYsGY5t2jTN11LavLOeXWO
UR8014bhuc0+N2go9TRggMIJgL7OAr4Am4v+I5dDiJuABerY+TtHX+9SrAp1bGygKJDwCrRw5aZs
8/UKebKHtHqj7LurbSN3KbEkU+ZtVGZioO69ccztz72Z1+0NUt/V2Yf+KY52aumhWzAGJipF6tk3
KZlORQYfHWfyIx0oKCbOm7ZyVzaj0psv2W5hQuOO0REchhpa+6/qq32dviff0qbkrpzBpaLar/Ev
JFsneNlM6MQpnnVrwyvGFuVOKhGfx7yWRVNeLcKPXlTJNWUpoG09IvxkREM6zRxtJc3hvAE0InIc
YvwUkaW9qv2U/kmMFeAuNw3aeu+Z3+lyqfBr2pJd6I2YREqrtHa/thL9IxsvS9oqFEzJhuLEpiM0
SUVglIX8868TLIddtM4VXCucrs9MhbLaccZ0nTx68E/Ri8plOwzjdwhnZa56fsEXwBrEiuVqKD4M
Rma9Xh1HcXIbmUpQXOQJQp9ZHwWrNCWETTlLVTRIxn3dCmBAumIEWZ1x3/CC7fm9cS6U3SsEaxrO
cMQdf/WWPmbMCvHhmTZBvswthNK2souPrTO47RvNNK4EF/fEowwGmvesuSUWN9bn+BbcAxnEO72j
870vbmVgXVWjzNTGmSMzzkleq2nHgcu6WG4uIj9LxxRIvlVdVImPhsNGXZ3t42FVS7Mu8HT27L+o
2yVS4UeTXw5+IhgVkSH+ni4j7/xHZBlh6eJgNvTrUNuGbt/UA0owm59aXU7aHF9UtiYoXLrNrMbr
ATdecBHzwaz/11VZyi4bpPpv78dTOswr3gdHoiFibH6oTSNG8IVK8Frlb+KnCl+NxgUz/ukZKJ1d
4SXyIjDdZsHmiu7a1tbmUJUaaURy3diTHPzXec79YSQkYED6ig/aXYzyyfr/vMoBMt5vR3zupYYU
TCy67d2bVDftnOOKs+/hY3sNPQll48HdGztpoUTStRrh7mneoYdKONecmjhjQ18u34HOdOLqK7+U
0Oziw6CYrNLoH2sNEb7eBDhMeeBYkTP/rk9NsoXQpqmir2qg7QFFdJDBFpj+jqKEdgLzqkRvsOCf
BZLaJZ2bkP/GM9g70v4tS6WiZr9Wn70w+8e4ZCG2A1VuiZvC9UApwUiKqcR5SwV7Q67GWjLw6u85
oVBLyLVn2dntgoKSizhtDcK7qS+T2hSocsf9cSRXIkgIJMTOEtXco0DrNnLI1esdDu6tnpj4n1Ng
U2i36BWanBTsbJy4QlIT9/jGetdBrIA4JnKZHVxFnYVbN0yI0U9Xop2fVVlqXMmHmxxo2O96n/M7
IK+1qNIvi/ZW3E5+ojegEpJvHmoqzSRW7AX+oWjF6S2lfeuNGxcSz1uFVf3MdqoK6WVo67oHK2/O
rxyhYF3EukvUbf65tGzb+r49PVgsJ0UncYebTBGmE6D4vXfxCWYAhDpigDWh4Sl1NqWPNFV5jBm7
PAf2Cc76lelcti2citUKpmSwggPcAACreS/Nhojk++hWm4Nj0Py9qzj0emG7TX4QL46lSvS9vFjW
9VsgUHvGh4/wmCAIhx9HNDc5+EpVM3Pg8X2zqb71/BnV4x6UmA4jJbtkUW0bJfE29wIpylvs0yic
Ij08ce9uhhAFKmi4QZzqTe6m8DkzFIu8ueEAeMCiIzeBWNe5OMCO3ovUrPgbwFRAHIEpGTZAQW5Y
PwYXsOI5FMqwoiRsyvZ6jv9fFrBmGk9jW6gF7wsgnuFK3EJVTup4gN83oYk+U/5UcnjKkT/9AqcP
VP5koxytHhYAN/dgrTbhpKtkXn6H6/fJgCyTwl4D1NEI3BqZAPC8+llNaZdEgrolcXPR1naBNsB4
VDN+DaPMc2sTrgb0vWr8Y/mFZnyCF1sHk8+PR6tg9RI8YK4snAvUTvsYoursyzrpqP4LwVDDdJ+G
dDF9+qxBvXlc9uw5Jd+F6HxRT6BfqV7/FCSObvUWewKy/GboZpZw5P8Q7PNPbgP+EfowMQAMKIdA
rGD1r6R55MVy0xbL//VY495MNTXLDMhurWI7bOJWdt32bq++mQP0MjhZ/1lBD/DeuTtvWVjy4WrN
niIjYwAtN4pNn2i5mWmJAxPJNH0yNtAQQsxN3Us8A3eZ+Rj9gA1Tpg3HM8sYvTNoBkEYFuk4aMRq
0fzxVKARNXHAbkbueCZUWQxkSb79LIIdvYMCjgQJEijWntpom0C/jGqzR7BQJJjT8qah06YyqEKN
CyeUhK8V3hAnJsjOT9GMRp/FTPJfXVCqbunAd9mH5qDMEnJm7cPmCBhH6/y4xwh1h6cG199zg8TX
Jmg+YCmHJeZQVpKZ5U0TETCH2LzCCA79aEJJLiz1fi06FkFO1PJXg6H4MfSO0+2Typn75roofs/V
vuVY90XQJ7QtrBGmg9j51S4Z4noQTMR92XPoFZjb8x5ZHdxeAAmyIdT0wYd4AW4+urjN+WHXzPXU
ystHCTQHDQyeGNkuW1cTFdwEs5iRaKWtDde/KOE63Cw9oNxt1+0yRo+mpnYALtS2W3+0rMFAa5Zm
Qcp0kGYrVWimYsgj3trVJIyJWtStSGTB3+ZJYrjzYlU9OPxh96424TeSX0OwlK9FOeJdxmQY2m1j
YjclY2KD2Wm+Zt4wXuG/+c8vhDL4j0lBc2B5Hudg3+fmclHTB5ZhBF1fKbd8Wzkc77/7VJG6hYOi
mUxNfh6QLdpApmFb8aDiGwfzPQElnzzzvLr5bB9K0HXCPxeZEO4K9ss+3nBCnzGgvKdgMpsywFtf
zTBDfmwQFLY1otC7rpuzQBZHhHzlYSw39wBH1BQH2f9cdcr4tOz+Q6DgKbR57ASeJep7AMgqAR5x
z8qYcIg50zx12ZkegDc24O5IRHQjEXD+I6nZFV80tk3TcxkYptdLdqQYHawuQzLkewsN77cA2nWR
Gsgh9iob49hpcTvxp8pVxgkL7ID0NLWAO/3gHhuH8UFW4bk3yGAgAcqLpO6CDPEoGzUqaPTCa2hh
bPMiF88yXwy/i6QwjEc2JcqP4IpeW3QzLmx/b0A7iIU6di2J24ceeEGbv0SNDouOicN4SvLtZbaa
ZNJ/uAP7y27/T+xkwEtjiJEEMQHrZmNM6WWMLde/gcz5Om65mlmWV+rQRADkvhXiCPd2PTdeaOFl
5ec6k3drG1Wgbd0kn2dOnuY7mWmuzfQ8aqoXbSRZpIttMO+rWo8gnvPxbt5SPXuDkSgm42sxTDRD
A/ZyCRVV+Gg8fV6+qblpZic7UXhUGal6V+XPuSskdTJZMTFT7s2caI9pUzO5JgAIe89gGenzn6ni
rz2oCH/gdECzBkzKfyLTlGwIPc20fe5UEa3JFJz/twGGOtpW0BtFm1Iey4xKjdKTn+jG8dTIy/hp
Cah6w1spfsLf+V+bCZueQRGiwfXJB3C07mMact6KGGkgo/ALm2cKEjuIBI98oHh4FfRKl+FzWx9r
4G+DyakEGHu+eyJ1NtvqOO2ExZ4crZ3rdZcZKjsi1ii5TCtiGyXCbi12eoLDx5s4u3cla7yZZxdP
Qh9nk6eZaB91kemMC60H3FXKveE6pxtagY5fpZHJvEG+NpMZNiSoa6SB+JSCbVdEGEyp7pY3Ri7G
2jw9fOV4jjsUumrA2Qv/68J7JJMSOTRwWx4P9dSFWTiZJ9NQa2gyFFyXxAVpSF/3VGlRzDiHcSbY
LvG1Mca19PGHcfOW0CQ9MRcH4RV54Yvly2vX12l7442/Sggf3cIv/BuTW2TBp1tb4e57NbW52Olh
0ZfhJ+diZj7CCybpMXOJ7Xe3P+B4XdliZ2UoO4a+4nuYo5ljk877VFFn6/4WKeAsHOq36+nJvv1B
ORed+UNDkdT9o5abZffSIflIdGTNhmli8487P9ncyZ17Kb2Ivc51yJPOa2LhgN3yR5DbBjLYYzRV
pS7tbSzYcCFsjTb+qAWx5jzPdbu2wZ1VuIzz35zz7JaiXXc2NXDzXWbPMIi4TKGP//4FNy4ehb4E
FdSoZpOokTwpN7NDdEPBqOm4Npu/zarq1vLUgi/6EJ2MWj7OsYGnOyLTBsQ50XPqU4hKgQBiLo47
K5ii9Z1VKn7A/hpp8c/xEV+TgxXERvjpaGKym7WlHwsoeJ1glhW48E5xViru5ahxzeuEcX54Dn3p
nfRp5yNPjzeD/KrhMB1HnrhjvU1XIHS9kYPkaNuu6tzBgHpIgc0072tcdUE542nI0gBy/Yvyr4nm
b3eXD5KhD1Y2Kf5HMzeeS5Q8QxnwrThfhjBsuAy5+F8mGJrgVfUBqodSEy4qWud2KYOGuqCnFN2B
4+DoYmIWZK2w2fUU4xTRzPZO37Md0fRmjGGoNNGpzsC3a6r9D9LvJl0x6MRk6eCTuvIzDC5uAeDn
vPlVEHpJiFuf8Fd2c8m+6zcq+qhJGnLF9Wwm6EcvqBWPqSL0xxXeS1MynvTj2gmWum1yQqDPgyvX
aTxEBGdxPKkQCEd7i4ALXwN00PXbsi7FNWOrbBsg+NcT1nSCUgWzHy+zcUPO7xuJbmSVq2j1la/y
gKHXS9xbztEmLhPmgAS1BDSc56p1LvfXwEQr1JlYKvMa6aZRjY+Ig6rNsDhsFap/RKI67O09DACz
NILdnvNViDCFhoikfUw39N8z/HZ0Pm8jObcqF3wgWuQYhHAY9dqdB86wwqI1WINzE9Ubd+ZQUGg7
TZC+3ljyw/5r5Eyx2Z0E1bybaDv8sbgRK/GOFJrd8Pv95To971UCIOgW18VrUiIgpleuZLbUNxJJ
LM53i0mfQKrPNraXVI9LkxmDPbtDWpNcLPmhqHWJv+U94Acmy6tktE1puDMwS9ixiRsFysDKEyPg
FCLuoyI9UVRcLx7jCPq2KzRIlV65Ba1TsV22/iW+Q8VEeo+n4G0+n5mxW00QjqPYYuNQNjcPiA+B
zLCHzjhxmuwCGMJvChppiHEzzoYEOr96GfRYvkYnKkHdcbYzyKYnvKy5AYg10A0vgwBT7nFD6c8s
aPBykrKwaR3/k9J+jZeT8RV90B9bUr2hDpYzy1maZ1HaIhb9hSyxzHSkSSGEYuJtbz5kr4/3nE6o
6vjkZ+iKftlrGSKxWRnwWt1Guj+hj5e59s7LlQ0Hm8mtWgdcVD0xto9B3wOyXliUgtePUPMsR8FB
rVUD3U5u6tlLByQ9H0AwkJDhNxQ+heSD+hzPo1gH/EOVqVrdnKGimzx0ahpEVnFJ+wAIiWQUO4GK
3LiR7zkGh1VMxknVrlDcBuO2s2bBS6aAeGcCAiDTvBkkZ5owr/YBpRPIVx4kIpDJGe2yUBVJoScm
VEur1A8fdmO/NiTGYoIYt0WjKamrGu+Z8HUKZgZOJFaMNzIQl6S46/Mh0k5AF0XziAG5IN9i24SQ
u12QxUTOXn/RDIUo3tE2ehXyH2tYwBguuM9yu5364ksJennkXfVY1t6lhRso+d/1wXdaQZPnwB/+
AO/sQqB56iBvglceDbQjtDX1dQJ5SpRYPTVPPX2xN72ixXB1Vd440Kc2UoaKIASOvP8ioywrk391
VZjtBHypiSg8RbuA8tchpyih/auXHcqgbfPEK0CypfUMrDXwwSY47UOGl+BMNmwaKDK6Kbs0ZZ68
AskRbekxmcG4rUAaXao3uR0bT9pbKsdIr3BB57x37ebIRmVCTRyJjfAF8BOZYtzmU8n5Cj0kngvd
DHEW63lS6WubMFZQhwbs+qNsyMRQVWEw1AaatinDTRScBLeGPTglgVbawzArxURrQunZ0FXPPBCM
cdEGYfjxjLWNsYhADP5Ng8Oi60XGTKgR9hDM1nBst9Pd736yHQ46G+lCI9/M4pUTfXmr9Gvdirm4
J5c0h/HwqR+iwHG6+3XLLSS50RAa3GeOKDByqeKhW7INRfggpNrGD+2huUCEJl/10THP7wpmZDI2
HxjWZ6ajgojR1WeeJbzuvTNFqmIHn8Az+q3wJC7rR6J2SP9z2Ab6EGdtoESxSBIIHHFYzkI2ZMQS
uVtrbOw/7gQIl/WH7Unn7rRJicjiYhMSx3FpKXdEf6emstgZ4HR9UFjpOAFXVW+H3SR6Z5RqpAbs
rbqAL69zkNqeBqCpwEy/5/INw9Zu7RiP6PVitfG2pn52xQBEFMo0aXrDD5l80coMZp+tpHOTETCJ
tfeBRfUKTKxvuGTDkVsZjNYv1kL5ck0CFQ3g7v+N399COnrp54mXM3ch9glI6TtBwy0T7tHyt2jj
bB8sEb7iWHa9y6G50jLSRLEJUpb+NvszAbc4ormnyqBYTRqGvMlXpMYu1z0d4jDCdqd1q3LOpKZU
ndeWwcAEUmSJoWxOdhJL272nGwdHZppkncsOpRr2mzhJBBTfspZh3Qa1IoHX3vwAj5S0uqq2v5om
GxXD772FvX5qusKGiarzHEsT2JAyF5b9cz/YxcuCgr9L6rrrZG6PAvtPwXqNCBVeoufrx0Up2Zb1
3um60GVATvATMk1FNeFV29/iKu5Q9lSib892D0UsHWOGP34tM40y/JY5qF6a5BojfVufaKUrmgjr
zn+xd2f9ejC/Gat2J5zQSK279t3NCiBmhozIp2oS675rVDDgal5HvSNnBW6YnJhqHHo+GLC4PvTV
GkXkgzYAY8dP7KFnh4PNkQBJAbvGnQMCVmxp50w7XbFcprKlk4a57BecQn93W8lh0N0fLMQpyxMN
61UqC9vhMtlaHWiq5hGUphdGzd0LLhdjgEyDlCKe4m10E4qkfHLIiIJDB1CXyr0zjy8zZShOEiag
GqgFsdhrAXrCpzrZb62HopCgJVDtQurYzQufi6clviUF9wZA3zhxMKEdk8EYaQ0m888VVXKYKMdD
Zh27MtAKIAc2jBMDIMUpFgQkba6eKd3IBFrf/k11MbFtf4vCdX/78Csfdxx39n0c6UeyfmBO/YOP
/loNZCqy5T3iEp3dHsoBKkO6tknu/pR0WYbh45R1cwR3wtDD0pVMbQTD+wYiD9dPfkDUXtPe6lEg
GuUM/6tb1hdbHSpOjCC2+Ks2eOLu/HL/PYlm2m3gWBWt6ITjYeqaR3jjOEq+lv7iR6UGVVAbTzyp
sLv41EniXDeAXiGka+3c6ywhJA1dpSqY9a36JrdBjjvWdSO6pln+PyfRjn5+JQasP2kRcvH11ehC
5yoc7Y6xGx1NhcltAkah33pceAAAzhxcWQYtkghTMm67i3GTAG6xpjVHU/nB/qIpm7IfrLdmqLAT
kFMG82P0RovVuFHeDJi/5cUnMNBrKTqQoyUeBiuMA1CLBGpqT4ilfY8/8zEFWqA104B/g/6ZIOjv
g7rTnOULowlFi6lQT3o9o0uk6B9tS2mnB0Ke3O0RGqAlHUfVxCYWbMRggqiFrCNpegxmxj+stfUO
UfmFJKy990UVD2Tkk3CAqefvXMx9A92/vHvzpwlCaHFQPfWMxs2FT8miGoVbAh/Mt7nF3zl8gtbZ
q/GrnhbgwvgtI4mVQKnezZVY12HFFuEQx2FHFwmv4Ys7flnm4lVt+O8mXHDNGlRiispRw5L20Xmk
OiRHwreIzJdbgzJhMamsi7fMHhkl6PMcJCwtdL5zhc5xrTaFsgtHYxY3rhUDnEO8UfuwnOLqQaB8
1nJvL0UYTee821n+om9J1Hy7vNtNA2n24zKc/hYerOYSESmwKuvHYoFJ7CnA7grccgH8CtHJ1yU3
c4PL3+R9RRXzeAx1HtQay+Wbx5DB+Ip6ow8ti12RuD8HFMNCaxbRiNnBz42dO3RE/klL/SHAgNMN
dpodXIGu3yiUUGq7GY7hWFv3sEyzJ8qMXWK/IZdgLk54VI2uuTWMxIfn0kti/d3wERoY8axaQ07S
4lHxyB6BraiB5sxss8IlyqCS6nABECLAHng+W/zsFtDRgDowWmdwFZ3Ccs6Uu73UGElBrwAH3sTN
3nJLhaYTPCyMa8fozPV7RuA8mTQoleVTWNuNZHFH0hQ0qhXibFnPRgwvf87ixfWkGis8gTJQsBEx
r5Ry8Be7BqE3x1wprsQmJFscLJyu8xePdKLmT8JRfmkW42Cs+9ivDQn34+I1/+j0hAC0LwC7KMPv
3UCgYX2ByPTFfWT/QiZnXOk9uiuUmZPmkSUl3A/QotV+P+vZp/8xan110W1chKiZwBj4yRI81kUh
6HyW8vyMoDyOFMe1QqNln0z/a7zrSnv9Ts+XU5PlaKq37F/zhWawJJY7iqjFVztcbbg1YfwelDSp
w5TA2h7yPJ0F73+eNpWugjittudUJq4XhjtYB2cMC1YRlzTPomtkigqfH6Dmx91tk0GmRwIuKPlC
o6nZNF/j++Og6oCDWqqYbcYgC8aixZnLNvWVUF8zpofBsRgfg+eALX+toThNdcbAN9d+YhN/3Nnm
MSjz+Km7LMo8j+YEEiVnGNy+IvUv6tI1hd7SzwAagDYLd/KUz7mM5boPd8OEEdhD45EwxiPFMf3i
1onni40gx6Yx3rYo//CGDBQnng0G4bcRcO+AjlzwWFoeh/JxHKkSHHvBrp5ScO2bQ0UHl4DJh8cF
Rb4bwWJQKesPR+GalFaCzXV1CssfJ+CU32DsdcO0b1KXFyeysDproahi6qBQLfXi269rHjAF8DCn
mpPvFX8GXWFABsg/4//WdoasHo9FQxgl2tvyDYr7c09ifFnDN98uAlYQ/mMEcYACZojR+hoxbpup
ogmpliC69HFhb+Zmk22zqwejyRoh3rM7sUpb6t5oSF5d7l4iNyGEnqPgBmhR6N0ZEbP/ayEeo0mu
Agz8V5zFsqc9eBV13BLG9yZlhwt+O/iCIpg/EAUF/BEGAW1PMkfDonkcD/PHC2c2HQKuHFDhykY+
4+pFFkpJa+ptU+NJEv2oc1AKdqWuvLKBPsK7tTBz+dcaodno4q38NS5E2cypOyBjVZFNACshq5tk
EdoqoV8mvdiN0c2qZOT3aUa5Zp++MM6mlW+EbX4CLIynlqvKXwWTg65n8KxLeD6DmQ+0dpKkO9mW
0vsPIhE0TfduuEiE/wRfUO927LwCiWBv9PgvwHkRADzHqEk4SeXJm/ULsAOaPOItX2Jw6HgLELlM
xt53VbHb4EF8VXoHaWIGaYlU2nqQdKHa/FjLHivOgF1FK1aL1xsKX8nvFD7znjGPmuwGbEZ+RFEr
rrc6DG8n4L2dMKdJz5FDQgRnQtm0QWGbV8VqbYzUZ1RYgowtcOAo/kKJOavzSibBEf49i2OxshEQ
axFIk9dgZLLB3eSd59CNhHlVg9jphS+iGlCdpWJGBo7mLGK8+3AljjAZQ+HV+tw4ZyI6ESrc4zj2
6nvvPvOMQoEmHMYr/K6VpNB/Bn5s290vqh1QJJG0m9iDmVqXYwfXt5KoOBHsfB5u9EKHARy2TQUg
BwF2Qg2p0mF8+Icwenpb+zAu2TC8kAGvz/o8m0PIQPyTRj6JxC3lt9RVO39ufSew0w5FjfxvqhYW
WoKLPEVbvvgZhykadg1lqameo5ZThD91gyRLzqoQxPLAX5mSDT60/suvh1UCC29obX29Lmp/eyrG
NqsA32DsDEuIiVt/evx9hM6xcSeMYC+ygNTSXRKDwkPWBanNgVItzDkLKeGLVYY/Feb4tzvHylCh
PXnGG5IyJNbO3jm7YOjFEyBRzH3eJ5lq0h8e/ENMFrdDcblBxU9dblrF4z7BNQj4/x034+hUtHqI
2vCtqgZi4cCwe9DWVjhOQ7t5RSyaTDA38UN4B0R4Ynk0tvjLtJdT3yv5z+xKRRnVcQL5HafN8DHg
Uw3p1NTFZjGT2CZYFWDsL6FrSNvd33k8a08LpqIsQ93libtSoOBcK1T20F0VnKQDN0jdiRgD1iNq
YDkpiFzaRLWNHDEX5wCcwHLcLf98Xf2V+9DcckYwiA1bJ96JpaXcKz4ssUCOPzVUv6z4g6Utx43P
JUEIY5IHLf+CQh77NECBg4Feaj3kS5loZ9DcJDbkUhFx2g8vEOtWt7R/f60Kx/kS6T8wqDkkUoyx
e3prUiaqoes35o/pQ6IuatVq5kyuiSKlN4E9y7wTFJYc6EjKuSeuDkmV83j/7rJVSfFVWVA2uhp/
ZHMITqYolHLr9OpO4E3CGOgmftr4KW21/vsZKpPGWqBKPg1evdkHuu+3u5Ue3932JQ1Vr4XHU1fE
RGpM8p8vtoaCJJUdHRwkZrit8mbBVXzwk2f+QvNETF6RpwcrXE0OOgtkBKBgHTrhnVbuzbKWfxTm
er8mSq7LYXo5MY7+WdQ5UjLzU1MKVzXjQbxlPMytXGuJ8Gbnot3tJh2c7nDnfRWyEPV+JLTenlJB
rAdR/+sJNLKsohmwFiNC3xIf2LwWpCGvv85g9lTikkjvL/+aryyYSW65Z1uHnSASRuk7Rq0mO/I7
dpCvhJJBkteEvxDLRC7ILxnBLUdG29NrlvUq3dAI2Rp49m+psXYFjfv3upJGTLH6FnYsozjjgr0P
HNXRQg4OZtmab2Cp5rsb8IYIyVrqZnK4SWoUhY+9JSli/yn0gskYP+9y6WBM5Phq7J7z5Gk7E7P+
JqVdDmb26vvJqdpuSAEBeO6UtitDOXPZe4tZkq4Hpi1zSRms3qovMBQkTdPCvPb55D3VxMONJM8u
kn1i40w7YKVf77cgRoBtZuWqilqhk/sYhZOJe1PzfgvBW3VqrvWlfZl5KGcrZBjY/RVYUP4z/1m2
19b8f1z64aignsifRWhfQopv+h7ghxmQeyi7h4mCswiK0YkyBt/4SO82YoeD8lQnb1pSJkDs78qz
5bRXzvgOLeQGPAgrbze7rOmLAocwKFQRsZqswcRkWBaSEOvXk1+xDjW/6EJwkNF7nsucaqfH4qFz
9uvD6sq3bPGU8rKOtJfG5UaGYEzvIxBd+XRAdvUzDg32kQ9WNY9NxJTSAuJDjoMYb7Db6OmhZIza
PT5m/s7LhwIxRu0ssqyWTt2ILa2rGBO0l+VwYnI+ZLn050Ncl27quzPQAvTbpaCqXDK7RiQ9UyOb
2qVd
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
