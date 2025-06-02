`timescale 1ns / 1ps

module top_tb;

// 输入信号
reg          sys_clk;
reg          clk_1m;
reg          clk_640k;
reg          sys_rst_n;
reg  [3:0]   key;
reg  [9:0]   ad_data_1;
reg          ad_otr_1;
reg  [9:0]   ad_data_2;
reg          ad_otr_2;

// 输出信号
wire         ad_clk_1;
wire         ad_oe_1;
wire         ad_clk_2;
wire         ad_oe_2;
wire         da_clk_1;
wire         da_clk_2;
wire [7:0]   da_data_1;
wire [7:0]   da_data_2;

// 系统时钟参数
localparam SYS_CLK_PERIOD = 20;  // 50MHz时钟，周期20ns
localparam SYS_CLK_PERIOD2 = 1000;  // 1MHz时钟，周期1us
localparam SYS_CLK_PERIOD3 = 1562;  // 640KHz时钟，周期1562.5ns，误差为懒得算。

// 实例化顶层模块
top u_top(
    .sys_clk    (sys_clk),
    .sys_rst_n  (sys_rst_n),
    .key        (key),
    .ad_data_1  (ad_data_1),
    .ad_otr_1   (ad_otr_1),
    .ad_data_2  (ad_data_2),
    .ad_otr_2   (ad_otr_2),
    .ad_clk_1   (ad_clk_1),
    .ad_oe_1    (ad_oe_1),
    .ad_clk_2   (ad_clk_2),
    .ad_oe_2    (ad_oe_2),
    .da_clk_1   (da_clk_1),
    .da_clk_2   (da_clk_2),
    .da_data_1  (da_data_1),
    .da_data_2  (da_data_2)
);



// 生成系统时钟
initial begin
    sys_clk = 1'b0;
    forever #(SYS_CLK_PERIOD/2) sys_clk = ~sys_clk;
end
// 生成1m时钟
initial begin
    clk_1m = 1'b0;
    forever #(SYS_CLK_PERIOD2/2) clk_1m = ~clk_1m;
end
// 生成1m时钟
initial begin
    clk_640k = 1'b0;
    forever #(SYS_CLK_PERIOD3/2) clk_640k = ~clk_640k;
end

// 初始化与复位
initial begin
    sys_rst_n = 0;
    key = 4'b0000;
    ad_data_1 = 10'b0;
    ad_data_2 = 10'b0;
    ad_otr_1 = 0;
    ad_otr_2 = 0;
    
    // 复位释放
    #100;
    sys_rst_n = 1;
    
    // 模拟按键按下（启动信号）
    #200;
    key = 4'b0001;  // 按下第一个按键
    #100;
    key = 4'b0000;
end

// 读取文件中的数据
reg [15:0] mem [0:4095];
integer i;

initial begin
    // 读取数据文件（注意文件格式）
    $readmemb("C:/Users/sb/Desktop/git/jnu2023h/code/sim/sine_wave_5kHz_unsigned.txt", mem);

    // 等待系统初始化完成
    wait(sys_rst_n == 1);
    #100;    // 发�?�数据（AXI Stream协议�?
    // 数据发送
    i = 0;  // 显式初始化
    // forever begin
    //     @(posedge clk_1m);  // 等待真实的1MHz时钟
    //     //ad_data_1 = mem[i];
    //     i = (i < 4095) ? i + 1 : 0;
    //     // 添加终止条件（示例）
    //     if (i == 9000) $finish;  // 测试时限制循环次数
    // end

    // // 在640kHz时钟下读取数据
    // forever begin
    //     @(posedge clk_640k);  // 等待真实的1MHz时钟
    //     ad_data_1 = mem[i];
    // end




    // 等待FFT处理完成（根据实际情况调整延时）
    #2000000;
	$finish;    

    
end

// 监控输出信号
// initial begin
//     $timeformat(-9, 2, " ns", 10);
//     $monitor("Time = %t: DA1 = %d, DA2 = %d", $time, da_data_1, da_data_2);
    
//     // 仿真运行时间（可根据需要调整）
//     #100000000; // 100ms仿真时间
//     $finish;
// end
// 在1MHz时钟下更新i
always @(posedge clk_1m or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        i <= 0;
    end else begin
        i <= (i < 4002) ? i + 1 : 0;
    end
end

// 在640kHz时钟下读取数据
always @(posedge clk_640k or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        ad_data_1 <= 10'b0;
    end else begin
        ad_data_1 <= mem[i][9:0]; // 确保只取低10位
    end
end
endmodule