`timescale 1ns / 1ps

module fft_tb;

reg clk;
reg rst_n;
// FFT输入接口（驱动信号改为reg�?
reg [15:0] fft_s_data_tdata;  // 输入数据（实部）
reg        fft_s_data_tvalid; // 数据有效
reg        fft_s_data_tlast;  // 数据结束标志

// FFT输出接口（保持为wire�?
wire       fft_s_data_tready; // FFT准备好接收数�?
wire [47:0] fft_m_data_tdata; // 频谱输出数据
wire        fft_m_data_tvalid;

// 配置接口
reg [7:0]  fft_s_config_tdata;
reg        fft_s_config_tvalid;
wire       fft_s_config_tready;


// FFT IP核实例化
xfft_0 u_fft(
    .aclk(clk),
    .aresetn(rst_n),
    .s_axis_config_tdata(8'd1),
    .s_axis_config_tvalid(1'b1),
    .s_axis_config_tready(fft_s_config_tready),  // 悬空
	
    .s_axis_data_tdata({16'h0000, fft_s_data_tdata}), // 虚部�?0，实部为输入数据
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

// 读取文件中的数据
reg [15:0] mem [0:127];
integer i;

initial begin
    // 初始�?
    clk = 0;
    rst_n = 0;
    fft_s_config_tvalid = 0;
    fft_s_data_tvalid = 0;
    fft_s_data_tlast = 0;
    
    // 复位
    #100;
    rst_n = 1;

    // 读取数据文件（注意文件格式）
    $readmemb("J:/vivado/project/ti/jnu2023_test/code/sim/triangle_data.txt", mem);

    // 发�?�配置（示例配置，需根据实际�?求调整）
    fft_s_config_tdata = 8'h01;  // 示例配置�?
    fft_s_config_tvalid = 1'b1;
	//fft_s_config_tready = 1'b1;
    wait(fft_s_config_tready);   // 等待配置就绪
    @(posedge clk);
    fft_s_config_tvalid = 1'b0;

    // 等待数据通道就绪
    wait(fft_s_data_tready);

    // 发�?�数据（AXI Stream协议�?
    for (i = 0; i < 128; ) begin
        @(posedge clk);
        if (fft_s_data_tready) begin
            fft_s_data_tdata <= mem[i];
            fft_s_data_tvalid <= 1'b1;
            fft_s_data_tlast <= (i == 127);
            i <= i + 1;
        end else begin
            fft_s_data_tvalid <= 1'b0; // 保持数据直到就绪
        end
    end

    // 结束传输
    @(posedge clk);
    fft_s_data_tvalid <= 1'b0;
    fft_s_data_tlast <= 0;
    for (i = 0; i < 128; ) begin
        @(posedge clk);
        if (fft_s_data_tready) begin
            fft_s_data_tdata <= mem[i];
            fft_s_data_tvalid <= 1'b1;
            fft_s_data_tlast <= (i == 127);
            i <= i + 1;
        end else begin
            fft_s_data_tvalid <= 1'b0; // 保持数据直到就绪
        end
    end
    // 等待FFT处理完成（根据实际情况调整延时）
    #2000000;
	$finish;
end

// 生成640kHz时钟（周�?1562.5ns�?
always #781.25 clk = ~clk;

// 监视输出数据
initial begin
    $timeformat(-9, 2, " ns", 10);
    forever begin
        @(posedge clk);
        if (fft_m_data_tvalid) begin
            $display("[%t] FFT输出: 实部=%h 虚部=%h", 
                    $realtime,
                    fft_m_data_tdata[15:0],   // 实部
                    fft_m_data_tdata[31:16]); // 虚部
        end
    end
end

endmodule