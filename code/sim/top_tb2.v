`timescale 1ns / 1ps

module top_tb;

// 输入信号
reg          sys_clk;
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

// 从文件读取数据并驱动ADC输入
integer file;
integer scan;
reg [10:0] mix_value;  // 存储从文件读取的11位数据

initial begin
    // 打开数据文件
    file = $fopen("D:/vivado/project/ti/jnu2023h/code/sim/top_triangle_data.txt", "r");
    if (file == 0) begin
        $display("Error opening file!");
        $finish;
    end
    
    // 等待复位完成
    wait(sys_rst_n == 1);
    #10;
    
    // 按1MHz频率读取数据（每1us读取一次）
    forever begin
        // 读取一个数据点
        scan = $fscanf(file, "%d", mix_value);
        if (scan != 1) begin
            $display("End of file reached");
            $finish;
        end
        
        // 拆分数据到两个ADC输入
        if (mix_value <= 1023) begin
            ad_data_1 = mix_value[9:0];
            ad_data_2 = 0;
        end
        else begin
            ad_data_1 = 10'd1023;
            ad_data_2 = mix_value - 10'd1023;
            // 确保不超过ADC量程
            if (ad_data_2 > 1023)
                ad_data_2 = 10'd1023;
        end
        
        // 保持数据1us（50个时钟周期）
        repeat(50) @(posedge sys_clk);
    end
end

// 监控输出信号
initial begin
    $timeformat(-9, 2, " ns", 10);
    $monitor("Time = %t: DA1 = %d, DA2 = %d", $time, da_data_1, da_data_2);
    
    // 仿真运行时间（可根据需要调整）
    #1000000;
    $finish;
end

endmodule