//****************************************Copyright (c)***********************************//
// �޸�˵��������16λ�з���������
// ��Ҫ�޸ĵ㣺
// 1. ����λ����չΪ16λ
// 2. ԭ��ת���߼�����15λ����
// 3. ƽ���ͼ�����չ��31λ
// 4. Cordic����ӿ�����
//****************************************************************************************/

module data_modulus(
    input             clk,
    input             rst_n,
    // FFT ST�ӿڣ��޸�Ϊ16λ���룩
    input   [15:0]    source_real,   // ʵ�� �з����������룩
    input   [15:0]    source_imag,   // �鲿 �з����������룩
    input             source_eop,    // ֡�����ź�
    input             source_valid,  // ������Ч�ź�
    
    // ȡģ����ӿ�
    output  [15:0]    data_modulus,  // ȡģ���
    output            data_eop,      // ���֡����
    output            data_valid     // �����Ч�ź�

	//jhb����
	input key,                       //�������ã�������Ŀ��������������Ǹ�λ

	output  reg       fft_en,		 //fft��ʹ�ܣ��ӵ�������Ч����ʱ����Ч����
    //ȡģ���������ݽӿ� 
    output  [15:0]    data_modulus,  //ȡģ������� 
	output  reg  [7:0]	  wr_addr,	 //дram��ַ
	output         	  wr_en,		 //дʹ��	
	output  reg       wr_done		 //����ģ��ʹ��

);

// ��������
localparam DATA_WIDTH = 15;  // ��Ч����λ��������չ��

// �Ĵ�������
reg  [DATA_WIDTH-1:0] data_real;     // ʵ��ԭ�루�޷��ţ�
reg  [DATA_WIDTH-1:0] data_imag;     // �鲿ԭ�루�޷��ţ�
reg  [2*DATA_WIDTH:0] source_data;   // ƽ���ͣ�λ��2N+1��
reg  [7:0]            source_valid_d; // ��Ч�ź��ӳ���
reg  [7:0]            source_eop_d;    // EOP�ź��ӳ���

//*****************************************************
//**                    ��Ҫ�߼�
//*****************************************************

// ����תԭ�봦������16λ���룩
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        data_real <= 0;
        data_imag <= 0;
    end
	else if(!key) begin 
        source_data <= 0; 
        data_real   <= 16'd0; 
        data_imag   <= 16'd0; 
    end
    else begin
        // ����ʵ��������λΪ���λ��
        data_real <= source_real[15] ? 
                   (~source_real[DATA_WIDTH-1:0] + 1'b1) :  // ����ȡ��
                   source_real[DATA_WIDTH-1:0];              // ����ֱ��ȡ
        
        // �����鲿
        data_imag <= source_imag[15] ? 
                   (~source_imag[DATA_WIDTH-1:0] + 1'b1) : 
                   source_imag[DATA_WIDTH-1:0];
    end
end

// ƽ���ͼ��㣨31λ�洢��
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        source_data <= 0;
    else
        source_data <= (data_real * data_real) + (data_imag * data_imag);
end

// �ź��ӳ���������ʱ����룩
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        source_valid_d <= 0;
        source_eop_d <= 0;
    end
    else begin
        source_valid_d <= {source_valid_d[6:0], source_valid};
        source_eop_d   <= {source_eop_d[6:0], source_eop};
    end
end

// Cordic IP�˽ӿڣ�����������Ϊ31λ���룩
cordic_0 u_cordic_0 (
    .aclk(clk),    // ʱ��
    // ����ӿڣ���ȷ��IP������֧��31λ���룩
    .s_axis_cartesian_tvalid(source_valid_d[3]),  // ʱ�����
    .s_axis_cartesian_tdata(source_data),         // 31λƽ����
    // ����ӿ�
    .m_axis_dout_tvalid(data_valid),
    .m_axis_dout_tdata(data_modulus)              // 16λ���
);

// EOP�ź�ʱ�����
assign data_eop = source_eop_d[7];

//jhb����
assign wr_en = (wr_addr <= 128) ? data_valid : 0 ;
 
//дram����
always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) 
        wr_addr  <= 8'd0;
    else if(!key)
        wr_addr  <= 8'd0;        
    else if(wr_en)
        wr_addr  <= wr_addr + 8'd1;
    else
        wr_addr  <= wr_addr;          
end

always @ (posedge clk or negedge rst_n)
    if(!rst_n) begin 
	wr_done <= 0;
	fft_en <= 1;
	end
	else if(!key) begin 
	wr_done <= 0;
	fft_en <= 1;
	end
	else if(wr_addr > 128)begin
	wr_done <= 1;
	fft_en <= 0;
	end
	else begin
	wr_done <= wr_done;
	fft_en <= fft_en;
	end
//ȡ��һ���һ��͹ر�fft��ͬʱ����д��ram
endmodule