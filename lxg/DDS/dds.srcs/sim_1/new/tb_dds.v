`timescale 1ns / 1ps        //仿真单位/仿真精度

module tb_dds();

//parameter define
parameter  CLK_PERIOD = 20; //时钟周期 20ns

//defparam  define
defparam u_dds.CNT_MAX=5;

//reg define
reg     sys_clk;
reg     sys_rst_n;
reg     wave_select1;
reg     wave_select2;
reg     [7:0]freq_select1;
reg     [7:0]freq_select2;
reg     [5:0]phase_select1;
reg     [5:0]phase_select2;

//信号初始化
initial begin
    sys_clk = 1'b0;
    sys_rst_n = 1'b0;
    wave_select1=1'b0;
    wave_select2=1'b0;
    freq_select2=8'd4;
    phase_select2=6'd0;
    phase_select1 = 6'd10;
    #20000
    sys_rst_n = 1'b1;

    //改变波形频率
    #10
    freq_select1 = 8'd4;
    // #120000
    // freq_select1 = 8'd5;
    // #200000
    // freq_select1 = 8'd6;
    // #120000
    // freq_select1 = 8'd7;

   
end

//产生时钟
always #(CLK_PERIOD/2) sys_clk = ~sys_clk;

dds u_dds(
    .sys_clk     (sys_clk   ),
    .sys_rst_n   (sys_rst_n ),
    .wave_select1 (wave_select1),
    .wave_select2 (wave_select2),
    .freq_select1 (freq_select1),
    .freq_select2 (freq_select2),
    .phase_select1 (phase_select1),
    .phase_select2 (phase_select2),
    .da_clk_1      (),
    .da_clk_2      (),
    .da_data_1     (),
    .da_data_2     (),
    .ad_data     (),
    .ad_otr      (),
    .ad_clk      ()
    );

endmodule
