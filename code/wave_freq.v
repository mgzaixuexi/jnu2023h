`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/16 12:42:55
// Design Name: 
// Module Name: wave_freq
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


module wave_freq(
    input clk,
    input rst_n,
    input en,//ʹ�ܣ���������Ч��fftȡģ����д��ram���������
	input key,//����������ʶ��
    input [15:0] rd_data,//fftȡģ����
    output reg [7:0] rd_addr,//ram��ַ
    output reg [7:0] waveA_freq,//��AƵ�ʣ�Ҫ��5000
    output reg waveA_sin,//��AΪ���Ҳ�����Ч�źţ�����Ч
    output reg [7:0] waveB_freq,//��BƵ�ʣ�Ҫ��5000
    output reg waveB_sin,//��BΪ���Ҳ�����Ч�źţ�����Ч
    output reg wave_vaild//������Ч�źţ�����Ч
    );
    
parameter compare_num1 = 16;//�Ƚ���ֵ������
parameter compare_num2 = 16;//�Ƚ���ֵ������
parameter idle = 6'b000_001;
parameter find = 6'b000_010;//����������ֵ
parameter overlap = 6'b000_100;//��BƵ���ǲ�A����Ƶʱ
parameter trijudgeA = 6'b001_000;//�жϲ�A��״
parameter trijudgeB = 6'b010_000;//�жϲ�B��״
parameter done = 6'b100_000;

reg [5:0] state;
reg [5:0] next_state;
reg en_d0;
reg en_d1;
reg [15:0] waveA_data;
reg [15:0] waveB_data;
reg [15:0] waveA_3ndata;//��A����Ƶ���������ֵ
reg [15:0] waveB_3ndata;//��B����Ƶ���������ֵ
reg [2:0] flag;
reg key_d0;
reg key_d1;

wire [7:0] waveA_freqx3;//��A����Ƶ
wire [7:0] waveB_freqx3;//��B����Ƶ

assign waveA_freqx3 = waveA_freq * 3;
assign waveB_freqx3 = waveB_freq * 3;

always @(posedge clk or negedge  rst_n)begin
	if(~rst_n)begin
	en_d0 <= 0;
	en_d1 <= 0;
	key_d0 <= 1;
	key_d1 <= 1;
	end
	else begin
	en_d0 <= en;
	en_d1 <= en_d0;
	key_d0 <= key;
	key_d1 <= key_d0;
	end
end

always @(posedge clk or negedge  rst_n)
	if(~rst_n)
	state <= idle;
	else 
	state <= next_state;

always @(*) begin
    next_state = idle;
    case(state)
		idle		:if(en_d0 & ~en_d1)
						next_state = find;
				 	 else 
						next_state = idle;
						
		find		:if(flag[0])
						if(waveB_freq == waveA_freqx3)
						next_state = overlap;
						else 
						next_state = trijudgeA;
					else 
						next_state = find;
		overlap		:if(rd_addr == (waveB_freqx3 -1))
						next_state = trijudgeB;
					else 
						next_state = overlap;
		trijudgeA	:if(rd_addr == (waveB_freqx3 -1))
						next_state = trijudgeB;
					else 
						next_state = trijudgeA;
		trijudgeB	:if(flag[2])
						next_state = done;
					else 
						next_state = trijudgeB;
		done		:if(~key_d0 & key_d1)
						next_state = idle;
					else 
						next_state = done;
		default		:next_state = idle;
	endcase
end

		
always @(posedge clk or negedge  rst_n)
	if(~rst_n)begin
	waveA_freq <= 0;
	waveA_sin <= 0;
	waveB_freq <= 0;
	waveB_sin <= 0;
	wave_vaild <= 0;
	waveA_data <= 0;
	waveB_data <= 0;
	flag <= 0;
	rd_addr <= 4;
	waveA_3ndata <= 0;
	waveB_3ndata <= 0;
	end
	else 
		case(state)
			idle		:begin
						waveA_freq <= 0;
						waveA_sin <= 0;
						waveB_freq <= 0;
						waveB_sin <= 0;
						wave_vaild <= 0;
						waveA_data <= 0;
						waveB_data <= 0;
						flag <= 0;
						rd_addr <= 4;
						end
			find		:begin
						if(rd_addr < 20)
							rd_addr <= rd_addr + 1'b1;
						else begin
						    rd_addr <= waveA_freqx3 - 1;
						    flag[0] <= 1;
						    end
						if((rd_data > waveB_data) || (rd_data > waveA_data))begin
						    waveB_data <= rd_data;
						    waveA_data <= waveB_data;
						    waveB_freq <= rd_addr;
						    waveA_freq <= waveB_freq;
						    end
						else begin
						    waveA_freq <= waveA_freq;
							waveA_data <= waveA_data;
							waveB_freq <= waveB_freq;
							waveB_data <= waveB_data;
						    end
						end
			overlap		:begin
						if(compare_num1 <= (waveB_data - waveA_data) && (waveB_data > waveA_data))
							waveA_sin <= 0;
						else 
							waveA_sin <= 1;
						rd_addr <= waveB_freqx3 -1;
						end
			trijudgeA	:begin
						rd_addr <= waveA_freqx3 + 1;
						if((rd_data > waveA_3ndata) && (rd_addr != waveA_freqx3) && (rd_addr != waveB_freq))
							waveA_3ndata <= rd_data;
						else 
							waveA_3ndata <= waveA_3ndata;
						if(rd_addr == (waveA_freqx3 + 1))
							rd_addr <= waveA_freqx3;
						if(rd_addr == waveA_freqx3)
							if(((rd_data - waveA_3ndata) >= compare_num2 )&& (rd_data > waveA_3ndata))begin
							flag[1] <= 1;
							waveA_sin <= 0;
							end
							else begin
							flag[1] <= 1;
							waveA_sin <= 1;
							end
						if(flag[1])
							rd_addr <= waveB_freqx3 - 1;
						end
			trijudgeB	:begin
						rd_addr <= waveB_freqx3 + 1;
						if((rd_data > waveB_3ndata) && (rd_addr != waveB_freqx3))
							waveB_3ndata <= rd_data;
						else 
							waveB_3ndata <= waveB_3ndata;
						if(rd_addr == (waveB_freqx3 + 1))
							rd_addr <= waveB_freqx3;
						if(rd_addr == waveB_freqx3)
							if(((rd_data - waveB_3ndata) >= compare_num2) && (rd_data > waveB_3ndata))begin
							flag[2] <= 1;
							waveB_sin <= 0;
							end
							else begin
							flag[2] <= 1;
							waveB_sin <= 1;
							end
						end 
			done		:wave_vaild <= 1;
			default		:;
		endcase
endmodule
