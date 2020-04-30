clc;
clear all;
close all;

[x,fs] = audioread('original.m4a');

x = x(:,1);

subplot(2,1,1)
plot(x)
title('Noisy Audio')
grid on;

N = length(x);

noisy_fft = abs(fft(x));

L = length(noisy_fft);

f = (0:L-1)*(fs/L);

power_shift = fftshift(noisy_fft);

fc1 = (1*10^3)*(1/fs);

[b1,a1] = butter(5,fc1);

recover1 = filter(b1,a1,x);

fc2 = (3*10^3)*(1/fs);

[b2,a2] = butter(5,fc2,'high');

recover2 = filter(b2,a2,recover1);

subplot(2,1,2);



recover2 = (recover2*10^3)/2;

plot(recover2)
title('Recovered')
grid on

filename = 'lpf_hpf.m4a';
audiowrite(filename,recover2,fs);

