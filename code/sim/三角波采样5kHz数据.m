%% 三角波采样5kHz数据
% 参数设置
fs = 1e6;          % 采样频率1MHz
f = 5e3;           % 三角波频率5kHz
peak = 255;        % 峰值255
N = 4096;          % 采样点数4096

% 生成时间序列
t = (0:N-1)/fs;

% 生成三角波（范围0-255）
% 计算相位（归一化到[0,1)）
phase = mod(t * f, 1);

% 生成对称三角波
% 上升沿：0->peak (相位0-0.5)
% 下降沿：peak->0 (相位0.5-1)
tri_wave = zeros(1, N);
for i = 1:N
    if phase(i) < 0.5
        % 上升阶段
        tri_wave(i) = 2 * peak * phase(i);
    else
        % 下降阶段
        tri_wave(i) = 2 * peak * (1 - phase(i));
    end
end

% 转换为16位无符号整数（uint16）
data_uint16 = uint16(round(tri_wave)); % 四舍五入取整

% 打开文件写入二进制数据
fid = fopen('triangle_wave_5kHz_unsigned.txt', 'w');

% 将每个16位无符号整数写入文件（二进制格式）
for i = 1:N
    % 获取当前样本的16位二进制表示（自动补零到16位）
    binary_str = dec2bin(data_uint16(i), 16);
    
    % 写入文件
    fprintf(fid, '%s\n', binary_str);
end

fclose(fid);
disp('文件已保存为 triangle_wave_5kHz_unsigned.txt');

% 验证波形
figure;
subplot(2,1,1);
plot(t(1:200), tri_wave(1:200));      % 绘制前200个点（对应0.2ms）
xlabel('时间（秒）'); ylabel('幅值');
title('5kHz三角波（0-255范围）');
grid on;

subplot(2,1,2);
plot(t, tri_wave);                    % 绘制完整波形
xlabel('时间（秒）'); ylabel('幅值');
title('完整三角波波形');
grid on;