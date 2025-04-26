`timescale 1ns / 1ps

module data_modulus_tb;

// 输入信号
reg         clk;
reg         rst_n;
reg [15:0]  source_real;
reg [15:0]  source_imag;
reg         source_eop;
reg         source_valid;

// 输出信号
wire [15:0] data_modulus;
wire        data_eop;
wire        data_valid;

// 时钟周期定义
localparam CLK_PERIOD = 10;  // 100MHz

// 实例化被测模块
data_modulus u_data_modulus(
    .clk          (clk),
    .rst_n        (rst_n),
    .source_real  (source_real),
    .source_imag  (source_imag),
    .source_eop   (source_eop),
    .source_valid (source_valid),
    .data_modulus (data_modulus),
    .data_eop     (data_eop),
    .data_valid   (data_valid)
);

// 生成时钟
initial begin
    clk = 1'b0;
    forever #(CLK_PERIOD/2) clk = ~clk;
end

// 测试激励
initial begin
    // 初始化
    rst_n = 0;
    source_real = 16'd0;
    source_imag = 16'd0;
    source_valid = 1'b0;
    source_eop = 1'b0;
    #100;
    rst_n = 1;
    #100;

    // 测试用例1：正数测试（100+100j）
    send_data(16'd100, 16'd100, 1);

    // 测试用例2：负数测试（-200+150j）
    send_data(-16'd200, 16'd150, 1);

    // 测试用例3：零值测试（0+32767j）
    send_data(16'd0, 16'd32767, 1);

    // 测试用例4：大数测试（-300-400j）
    send_data(-16'd300, -16'd400, 1);

    // 测试用例5：边界测试（32767+0j）
    send_data(16'd1234, 16'd4321, 1);

    #200;
    $finish;
end

// 数据发送任务
task send_data;
    input [15:0] real_val;
    input [15:0] imag_val;
    input        eop;
    begin
        @(posedge clk);
        source_real <= real_val;
        source_imag <= imag_val;
        source_valid <= 1'b1;
        source_eop <= eop;
        @(posedge clk);
        source_valid <= 1'b0;
        source_eop <= 1'b0;
        // 等待结果输出
        wait_result(real_val, imag_val);
    end
endtask

// 结果监控任务
task wait_result;
    input [15:0] exp_real;
    input [15:0] exp_imag;
    begin
        // 等待有效信号（考虑Cordic流水线延迟）
        wait(data_valid);
        $display("[%t] 输入: real=%d, imag=%d", $time, exp_real, exp_imag);
        $display("    输出模值: %d (0x%h)", data_modulus, data_modulus);
        #(CLK_PERIOD*2);
    end
endtask

// 实时监控输出
always @(posedge clk) begin
    if(data_valid) begin
        $display("[%t] 有效输出: modulus=%d, eop=%b", 
                $time, data_modulus, data_eop);
    end
end

endmodule