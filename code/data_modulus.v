module data_modulus(
	input clk,
	input rst_n,
	//FFT ST接口 
    input   [8:0]     source_real,   //实部 有符号数 
    input   [8:0]     source_imag,   //虚部 有符号数 
    input             source_eop,    //fft数据通道接收最后一个数据标志信号 
    input             source_valid,  //输出有效信号，FFT变换完成后，此信号置高 
    //取模运算后的数据接口 
    output  [15:0]    data_modulus,  //取模后的数据 
    output            data_eop,      //取模后输出的终止信号 
    output            data_valid     //取模后的数据有效信号 
); 
 
//reg define 
reg  [15:0]  source_data;        //原码平方和 
reg  [7:0]   data_real;          //实部原码 
reg  [7:0]   data_imag;          //虚部原码 
reg  [7:0]   source_valid_d; 
reg  [7:0]   source_eop_d; 
 
//***************************************************** 
//**                    main code 
//*****************************************************  
 
assign  data_eop = source_eop_d[7]; 
 
//取实部和虚部的平方和 
always @ (posedge clk or negedge rst_n) begin 
    if(!rst_n) begin 
        source_data <= 18'd0; 
        data_real   <= 16'd0; 
        data_imag   <= 16'd0; 
    end 
    else begin 
        if(source_real[8]==1'b0)               //由补码计算原码 
            data_real <= source_real[7:0]; 
        else 
            data_real <= ~source_real[7:0] + 1'b1; 
             
        if(source_imag[8]==1'b0)               //由补码计算原码 
            data_imag <= source_imag[7:0]; 
        else 
            data_imag <= ~source_imag[7:0] + 1'b1;     
                                                //计算原码平方和 
        source_data <= (data_real * data_real) + (data_imag * data_imag); 
    end 
end 
   
//对信号进行打拍延时处理 
always @ (posedge clk or negedge rst_n) begin 
    if(!rst_n) begin 
        source_eop_d   <= 8'd0; 
        source_valid_d <= 8'd0; 
    end 
    else begin 
        source_valid_d <= {source_valid_d[6:0],source_valid}; 
        source_eop_d   <= {source_eop_d[6:0],source_eop}; 
    end 
end 
 
//例化cordic模块,开根号运算 
cordic_0 u_cordic_0 ( 
  .aclk(clk),           //输入时钟                             
  .s_axis_cartesian_tvalid(source_valid_d[1]),    //输入数据有效信号
  .s_axis_cartesian_tdata(source_data),     //输入数据
  .m_axis_dout_tvalid(data_valid),          //输出数据有效信号  
  .m_axis_dout_tdata(data_modulus)          //输出数据  
); 
 //数据格式输入通道s_axis_cartesian携带两个标量操作数X_IN (实数)和Y_IN（虚数），
 //X_IN和Y_IN在tdata字段中按字节对齐
 //第29至48行是对输入数据进行补码到原码的转换，同时对输入数据的原码取平方和。
 //ip核作用是原码的平方和开平方以得到幅值。
endmodule  

