module dds_ctrl(
	input 	clk,
	input 	rst_n,
	input 	key,
    output 	reg [5:0] phase_cnt
);

reg key_d0;
reg key_d1;

wire start;

assign start = ~key_d0 & key_d1 ;//下降沿检测

always @(posedge clk or negedge  rst_n)begin
	if(~rst_n)begin
		key_d0 <= 1;
		key_d1 <= 1;
	end
	else begin
		key_d0 <= key;
		key_d1 <= key_d0;
	end
end

always @(posedge clk or negedge rst_n)begin
	if(~rst_n)
		phase_cnt <= 0;
	else if(start)//按键按下，相位变化5°
		phase_cnt <= phase_cnt+1;
end
endmodule