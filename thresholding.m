clc;
clear all;
close all;

[x,fs] = audioread('original.m4a');

x = x(:,1);

subplot(2,1,1)
plot(x)
title('Noisy Audio')

N = length(x);

for i = 1:N
    
    if(x(i)>0.03 || x(i)<-0.03)
        
        recover(i) = x(i);
    else
        recover(i) = 0;
        
    end
end

recover = recover';
subplot(2,1,2);
plot(recover)
title('Recovered Audio')

filename = 'purethreshlding.m4a'
audiowrite(filename,recover,fs);

disp(snr(recover))
