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


module wave_freq
    #(
    parameter   addr_20k = 10   ,  //20kHZ频点位置
    parameter   addr_100k   = 640, //100kHZ频点位置
	parameter 	compare_num1 = 16,//比较阈值，待定
	parameter 	compare_num2 = 16,//比较阈值，待定
	parameter   freqlow = 5//log2(5000/fft分辨率)
    )
	(
    input clk,
    input rst_n,
    input en,//使能，上升沿有效，fft取模数据写入ram完成再拉高
	input key,//启动按键，重置识别
    input [15:0] rd_data,//fft取模数据
    output reg [11:0] rd_addr,//ram地址
    output     [11:0] waveA_freq,//波A频率，要乘5000
    output reg waveA_sin,//波A为正弦波的有效信号，高有效
    output     [11:0] waveB_freq,//波B频率，要乘5000
    output reg waveB_sin,//波B为正弦波的有效信号，高有效
    output reg wave_vaild//数据有效信号，高有效
    );
    
//状态参数
parameter idle = 6'b000_001;
parameter find = 6'b000_010;//查找两个峰值
parameter overlap = 6'b000_100;//波B频率是波A三倍频时
parameter trijudgeA = 6'b001_000;//判断波A形状
parameter trijudgeB = 6'b010_000;//判断波B形状
parameter done = 6'b100_000;

reg [5:0] state;
reg [5:0] next_state;
reg en_d0;
reg en_d1;
reg [15:0] waveA_data;//波Afft数据
reg [15:0] waveB_data;//波Bfft数据
reg [15:0] waveA_3ndata;//波A三倍频附近的最大值
reg [15:0] waveB_3ndata;//波B三倍频附近的最大值
reg [2:0] flag;
reg key_d0;
reg key_d1;
reg [11:0] waveA_freq_t;//波Afft数据地址
reg [11:0] waveB_freq_t;//波Bfft数据地址

wire [11:0] waveA_freq_tx3;//波A三倍频
wire [11:0] waveB_freq_tx3;//波B三倍频
wire clk_180deg;//180度相位时钟，确保设置地址后下一时钟能读出数据

assign waveA_freq_tx3 = waveA_freq_t * 3;//波A三倍频
assign waveB_freq_tx3 = waveB_freq_t * 3;//波B三倍频
assign waveA_freq = waveA_freq_t[11:freqlow];//波A基频，截断低位使得其乘以5000为基频频率
assign waveB_freq = waveB_freq_t[11:freqlow];//波B基频，截断低位使得其乘以5000为基频频率
assign clk_180deg = ~clk;//180度相位时钟，确保设置地址后下一时钟能读出数据

always @(posedge clk_180deg or negedge  rst_n)begin
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

//三段式状态机
always @(posedge clk_180deg or negedge  rst_n)
	if(~rst_n)
	state <= idle;
	else 
	state <= next_state;

always @(*) begin
    next_state = idle;
    case(state)
		idle		:if(en_d0 & ~en_d1)//检测上升沿启动
						next_state = find;
				 	 else 
						next_state = idle;
						
		find		:if(flag[0])//查找峰值结束
						if(waveB_freq_t == waveA_freq_tx3)//波A三倍频与波B重叠
						next_state = overlap;
						else 
						next_state = trijudgeA;
					else 
						next_state = find;
		overlap		:if(rd_addr == (waveB_freq_tx3 -1))//波A波形检测完毕
						next_state = trijudgeB;
					else 
						next_state = overlap;
		trijudgeA	:if(rd_addr == (waveB_freq_tx3 -1))//波A波形检测完毕
						next_state = trijudgeB;
					else 
						next_state = trijudgeA;
		trijudgeB	:if(flag[2])//波B波形检测完毕
						next_state = done;
					else 
						next_state = trijudgeB;
		done		:if(~key_d0 & key_d1)//按键下降沿重置识别
						next_state = idle;
					else 
						next_state = done;
		default		:next_state = idle;
	endcase
end

		
always @(posedge clk_180deg or negedge  rst_n)
	if(~rst_n)begin
	waveA_freq_t <= 0;
	waveA_sin <= 0;
	waveB_freq_t <= 0;
	waveB_sin <= 0;
	wave_vaild <= 0;
	waveA_data <= 0;
	waveB_data <= 0;
	flag <= 0;
	rd_addr <= addr_20k-1;
	waveA_3ndata <= 0;
	waveB_3ndata <= 0;
	end
	else 
		case(state)
			idle		:begin//设置初值
						waveA_freq_t <= 0;
						waveA_sin <= 0;
						waveB_freq_t <= 0;
						waveB_sin <= 0;
						wave_vaild <= 0;
						waveA_data <= 0;
						waveB_data <= 0;
						flag <= 0;
						rd_addr <= addr_20k-1;
						end
			find		:begin
						if(rd_addr < addr_100k )//查找20kHz到100kHz的fft数据
							rd_addr <= rd_addr + 1'b1;
						else begin//查找完后设置波A三倍频地址，拉高flag0
						    rd_addr <= waveA_freq_tx3 - 1;
						    flag[0] <= 1;
						    end
						//若出现比已储存值更大的值，位移寄存数据和地址，确保找到两个峰值	
						if((rd_data > waveB_data) || (rd_data > waveA_data))begin
						    waveA_data <= waveB_data;
						    waveB_freq_t <= rd_addr;
						    waveA_freq_t <= waveB_freq_t;
						    end
						else begin
						    waveA_freq_t <= waveA_freq_t;
							waveA_data <= waveA_data;
							waveB_freq_t <= waveB_freq_t;
							waveB_data <= waveB_data;
						    end
						end
			overlap		:begin
						//波B的值必须大于波A的值，大出一定的阈值
						if(compare_num1 <= (waveB_data - waveA_data) && (waveB_data > waveA_data))
							waveA_sin <= 0;
						else 
							waveA_sin <= 1;
						rd_addr <= waveB_freq_tx3 -1;
						end
			trijudgeA	:begin
						rd_addr <= waveA_freq_tx3 + 1;//1.进入此状态时，地址已经是波A三倍频地址-1，现在设置为+1
						//取出最大的三倍频附近（+1，-1）的值
						if((rd_data > waveA_3ndata) && (rd_addr != waveA_freq_tx3) && (rd_addr != waveB_freq_t))
							waveA_3ndata <= rd_data;
						else 
							waveA_3ndata <= waveA_3ndata;
						//2.已经取出了三倍频附近（+1，-1）的值，现在地址取波A三倍频地址
						if(rd_addr == (waveA_freq_tx3 + 1))
							rd_addr <= waveA_freq_tx3;
						//3.现在的rd_data时波A三倍频的值，作出波A波形判断，并拉高flag1
						if(rd_addr == waveA_freq_tx3)
							if(((rd_data - waveA_3ndata) >= compare_num2 )&& (rd_data > waveA_3ndata))begin
							flag[1] <= 1;
							waveA_sin <= 0;
							end
							else begin
							flag[1] <= 1;
							waveA_sin <= 1;
							end
						//flag1为高说明判断完成，设置地址为波B三倍频地址-1，为判断波B波形做准备
						if(flag[1])
							rd_addr <= waveB_freq_tx3 - 1;
						end
			trijudgeB	:begin
						//波B波形判断流程同上
						rd_addr <= waveB_freq_tx3 + 1;
						if((rd_data > waveB_3ndata) && (rd_addr != waveB_freq_tx3))
							waveB_3ndata <= rd_data;
						else 
							waveB_3ndata <= waveB_3ndata;
						if(rd_addr == (waveB_freq_tx3 + 1))
							rd_addr <= waveB_freq_tx3;
						if(rd_addr == waveB_freq_tx3)
							if(((rd_data - waveB_3ndata) >= compare_num2) && (rd_data > waveB_3ndata))begin
							flag[2] <= 1;
							waveB_sin <= 0;
							end
							else begin
							flag[2] <= 1;
							waveB_sin <= 1;
							end
						end 
			done		:wave_vaild <= 1;//检测完毕，拉高输出信号有效位
			default		:;
		endcase
endmodule
