clc;
clear all;
close all;

[x,fs] = audioread('original.m4a');

x = x(:,1);


noisy = x;

N = length(noisy);


noisy_fft = abs(fft(noisy));

L = length(noisy_fft);

f = (0:L-1)*(fs/L);

power_shift = fftshift(noisy_fft);

fc = [1 3]*10^3*(1/fs);

[b,a] = butter(4,fc,'bandpass');


recover = filter(b,a,x);


recover_fft = abs(fft(recover));
recover_shift = fftshift(recover_fft);


disp(snr(noisy))
disp(snr(recover))

filename = 'recovered_butter4.m4a';
audiowrite(filename,recover,fs);

subplot(2,2,1)
plot(noisy);
grid on;
title('Noisy audio')
subplot(2,2,2)
plot(f,power_shift(1:length(f)));
title('FFT of Noisy Audio')
grid on;
subplot(2,2,3)
plot(f,recover_shift(1:length(f)))
title('FFT of Recovered audio');
grid on;
subplot(2,2,4)
plot(recover)
title('Recovered Audio');
grid on;




