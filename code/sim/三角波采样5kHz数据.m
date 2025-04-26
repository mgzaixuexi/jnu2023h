%% 参数设置
fs = 640e3;       % 采样率640kHz
N = 128;           % 采样点数
f = 5e3;           % 三角波频率5kHz
peak2peak = 1;     % 峰峰值1V
bits = 10;         % 无符号10位量化

%% 生成三角波
t = 0:N-1;
period = fs/f;                   % 每周期采样点数=128
triangle = sawtooth(2*pi*f*t/fs + pi/2, 0.5); % 生成三角波（MATLAB的sawtooth函数）
triangle = 0.5*peak2peak*(triangle + 1);      % 偏移到[0,1]范围

%% 量化处理
quantized = round(triangle * (2^bits - 1));   % 转换为无符号10位整数
quantized(quantized < 0) = 0;                 % 确保无负数
quantized(quantized > 1023) = 1023;

%% 转换为16位二进制并保存
binary_str = dec2bin(quantized, 16);          % 扩展为16位宽度（低10位有效）
writematrix(binary_str, 'triangle_data.txt'); % 写入文本文件

%% 画图
t_sec = (0:N-1)/fs; % 时间向量（秒）
figure;
plot(t_sec, triangle);
xlabel('Time (s)');
ylabel('Amplitude (V)');
title('Generated Triangle Wave (1周期)');
xlim([0, 1/f]); % 显示一个周期（0.2 ms）
figure;
hold on;
plot(t_sec, triangle, 'b', 'LineWidth', 1.5); % 原始信号
plot(t_sec, quantized/(2^bits-1), 'r--', 'LineWidth', 1); % 量化信号（归一化）
hold off;
xlabel('Time (s)');
ylabel('Amplitude');
legend('原始信号', '量化信号', 'Location', 'northeast');
title('原始信号 vs 10位量化信号');
xlim([0, 1/f]);