//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           lcd_rgb_top
// Last modified Date:  2020/05/28 20:28:08
// Last Version:        V1.0
// Descriptions:        LCD��ʾ����ģ��
//                      
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2020/05/28 20:28:08
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//
module lcd_rgb_top(
    input                clk,            //ʱ��
    input                rst_n,          //��λ
   
    //RGB LCD�ӿ�   
    output               lcd_de,         //LCD ����ʹ���ź�
    output               lcd_hs,         //LCD ��ͬ���ź�
    output               lcd_vs,         //LCD ��ͬ���ź�
    output               lcd_clk,        //LCD ����ʱ��
    inout        [23:0]  lcd_rgb,        //LCD RGB565��ɫ����
    output               lcd_rst,        //LCD ��λ
    output               lcd_bl ,        //LCD ����
    
                  
    //�û��ӿ�
    input        [7:0]   fft_point_cnt,  //FFTƵ��λ��
    input        [7:0]   fft_data,       //FFTƵ�ʷ�ֵ
    output               fft_point_done, //FFT��ǰƵ�׻������
    output               data_req,       //���������ź�     
    output               out_vsync       //֡��λ������Ч 
    );                                                      

wire  [15:0]  lcd_id    ;    //LCD��ID
wire          lcd_pclk  ;    //LCD����ʱ��              
wire  [10:0]  pixel_xpos;    //��ǰ���ص������
wire  [10:0]  pixel_ypos;    //��ǰ���ص�������
wire  [10:0]  h_disp    ;    //LCD��ˮƽ�ֱ���
wire  [10:0]  v_disp    ;    //LCD����ֱ�ֱ���
wire  [23:0]  pixel_data;    //��������
wire  [23:0]  lcd_rgb_o ;    //�������������
wire  [23:0]  lcd_rgb_i ;    //�������������

//*****************************************************
//**                    main code
//*****************************************************

//�������ݷ����л�
assign lcd_rgb = lcd_de ?  lcd_rgb_o :  {24{1'bz}};
assign lcd_rgb_i = lcd_rgb;  

//��LCD IDģ��
rd_id u_rd_id(
    .clk          (clk      ),
    .rst_n        (rst_n    ),
    .lcd_rgb      (lcd_rgb_i),
    .lcd_id       (lcd_id  )
    );    

//ʱ�ӷ�Ƶģ��    
clk_div u_clk_div(
    .clk           (clk      ),
    .rst_n         (rst_n    ),
    .lcd_id        (lcd_id   ),
    .lcd_pclk      (lcd_pclk )
    );    

//LCD��ʾģ��    
lcd_display u_lcd_display(
    .lcd_pclk       (lcd_pclk  ),
    .rst_n          (rst_n     ),
    .lcd_id         (lcd_id),
    .pixel_xpos     (pixel_xpos),
    .pixel_ypos     (pixel_ypos),
    .h_disp         (h_disp    ),
    .v_disp         (v_disp    ),
    .pixel_data     (pixel_data),
    
    .fft_point_cnt  (fft_point_cnt),
    .fft_data       (fft_data  ),
    .fft_point_done (fft_point_done),
    .data_req       (data_req  )    
    );    

//LCD����ģ��
lcd_driver u_lcd_driver(
    .lcd_pclk      (lcd_pclk  ),
    .rst_n         (rst_n     ),
    .lcd_id        (lcd_id    ),
    .pixel_data    (pixel_data),
    .pixel_xpos    (pixel_xpos),
    .pixel_ypos    (pixel_ypos),
    .h_disp        (h_disp    ),
    .v_disp        (v_disp    ),
    
    .out_vsync     (out_vsync),
    .lcd_de        (lcd_de    ),
    .lcd_hs        (lcd_hs    ),
    .lcd_vs        (lcd_vs    ),   
    .lcd_clk       (lcd_clk   ),
    .lcd_rgb       (lcd_rgb_o ),
    .lcd_rst       (lcd_rst   ),
    .lcd_bl        (lcd_bl)
    );  

endmodule
