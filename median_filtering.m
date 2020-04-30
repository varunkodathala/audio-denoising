clc;
clear all;
close all;

[x,fs] = audioread('original.m4a');

x = x(:,1);

subplot(2,1,1)
plot(x)
grid on;
title('Noisy')

y = medfilt1(x,20);

subplot(2,1,2)
plot(y)
grid on;
title('Recovered');


audiowrite('median.m4a',y,fs)