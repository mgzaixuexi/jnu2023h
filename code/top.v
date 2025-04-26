//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/19 14:44:57
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input          sys_clk    ,  //系统时钟
    input          sys_rst_n  ,  //系统复位
	input	[3:0]  key        ,	 //按键输入
    //第一路ADC
    input   [9:0]  ad_data_1  ,  //第一路ADC数据
    input          ad_otr_1   ,  //第一路ADC输入电压超过量程标志
    output         ad_clk_1   ,  //第一路ADC驱动时钟
    output         ad_oe_1    ,  //第一路ADC输出使能
    //第二路ADC
    input   [9:0]  ad_data_2  ,  //第二路ADC数据
    input          ad_otr_2   ,  //第二路ADC输入电压超过量程标志
    output         ad_clk_2   ,  //第二路ADC驱动时钟
    output         ad_oe_2   ,    //第二路ADC输出使能

    //DA芯片接口
    output                da_clk_1      ,  //DAC驱动时钟
    output                da_clk_2      ,  //DAC驱动时钟
    output    [7:0]       da_data_1     ,  //输出给DA的数据
    output    [7:0]       da_data_2       //输出给DA的数据
    );

//wire define 
wire             clk_100m          ;  //100MHz时钟
wire             clk_50m          ;  //25MHz时钟
wire             clk_25m_deg120          ;  //25MHz时钟 120
wire 			 clk_32m;
wire 			 locked;
wire 			 rst_n;
wire 			 clk_640k;
wire [3:0] 		 key_value;				//按键值（防抖后）
wire             wave_select1    ;  //波形控制参数
wire             wave_select2    ;  //波形控制参数
wire [7:0]       freq_select1    ;  //频率控制参数
wire [7:0]       freq_select2    ;  //频率控制参数
wire [5:0]       phase_select1;   //相位控制
wire [5:0]       phase_select2;   //相位控制
wire [10:0]       mix_signal;  //混合信号


assign mix_signal = ad_data_1 + ad_data_2;  //加法混合信号
assign rst_n =  sys_rst_n && locked;
assign  ad_oe_1 =  1'b0;
assign  ad_oe_2 =  1'b0;
assign  ad_clk_1 = clk_50m;
assign  ad_clk_2 = clk_50m;

//PLL IP核
 clk_wiz_0 u_clk_wiz_0(
    .clk_out1 (clk_100m       ),  
    .clk_out2 (clk_50m        ),
    .clk_out3 (clk_25m_deg120 ), 
	.clk_out4 (clk_32m		  ),
    .locked   (locked         ),  
    .clk_in1  (sys_clk        )   
    );    

	
//fft时钟生成
ftt_clk u_ftt_clk(
    .clk_32m(clk_32m),
    .rst_n(rst_n),
    .clk_640k(clk_640k)
    );
	

//例化fft模块
//将采集后的adc输出数据补0赋给fft的输入数据


// FFT输入接口（驱动信号改为reg＿
wire [15:0] fft_s_data_tdata;  // 输入数据（实部）
assign fft_s_data_tdata = {5'b0,mix_signal[10:0]};  
wire       fft_s_data_tvalid; // 数据有效
wire       fft_s_data_tlast;  // 数据结束标志

// FFT输出接口（保持为wire＿
wire       fft_s_data_tready; // FFT准备好接收数捿
wire [47:0] fft_m_data_tdata; // 频谱输出数据
wire        fft_m_data_tvalid;

// 配置接口
reg [7:0]  fft_s_config_tdata;
reg        fft_s_config_tvalid;
wire       fft_s_config_tready;
// FFT IP核实例化
xfft_0 u_fft(
    .aclk(clk_640k),
    .aresetn(rst_n),
    .s_axis_config_tdata(8'd1),
    .s_axis_config_tvalid(1'b1),
    .s_axis_config_tready(fft_s_config_tready),  // 悬空
	
    .s_axis_data_tdata({16'h0000, fft_s_data_tdata}), // 虚部为0，实部为输入数据
    .s_axis_data_tvalid(fft_s_data_tvalid),
    .s_axis_data_tready(fft_s_data_tready),
    .s_axis_data_tlast(fft_s_data_tlast),
	
    .m_axis_data_tdata(fft_m_data_tdata),
    .m_axis_data_tuser(),
    .m_axis_data_tvalid(fft_m_data_tvalid),
    .m_axis_data_tready(1'b1), // 假设从设备始终准备好接收
    .m_axis_data_tlast(),

    .m_axis_status_tdata(),                  // output wire [7 : 0] m_axis_status_tdata
    .m_axis_status_tvalid(),                // output wire m_axis_status_tvalid
    .m_axis_status_tready(1'b0),                // input wire m_axis_status_tready	
    // 其他事件信号悬空
    .event_frame_started(),
    .event_tlast_unexpected(),
    .event_tlast_missing(),
    .event_status_channel_halt(),
    .event_data_in_channel_halt(),
    .event_data_out_channel_halt()
);

wire fft_en;
wire [32:0] data_modulus;
wire [7:0] wr_addr;
wire wr_en;
wire wr_done;
// 实部fft_m_data_tdata[15:0],   是否为有符号数仍需进一步验证
// 虚部fft_m_data_tdata[31:16]); 
data_modulus u_data_modulus(
	.clk(clk_640k),
	.rst_n(rst_n),
	.key(key_value[0]),                       //键控重置，就是题目里的启动键，不是复位
	//FFT ST接口 
    .source_real(fft_m_data_tdata[15:0]),   //实部 有符号数 
    .source_imag(fft_m_data_tdata[31:16]),   //虚部 有符号数 
	
    .source_valid(),  //输出有效信号，FFT变换完成后，此信号置高 
	.fft_en(fft_en),		 //fft的使能，接到数据有效或者时钟有效都行
    //取模运算后的数据接口 
    .data_modulus(data_modulus),  //取模后的数据 
	.wr_addr(wr_addr),	 //写ram地址
	.wr_en(wr_en),		 //写使能	
	.wr_done(wr_done)		 //分离模块使能
);						
					
					
endmodule
