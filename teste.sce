clear;
clc;

load('AnaRute.sod')
x_ana=x_a;

X_ana=fft(x_ana);
X_anaMetade = X_ana(1:length(x_ana)/2);
energia_ana=sum(abs(X_ana).^2)

x6_ana=x_ana(1:length(x_ana)/6);
X6_ana=fft(x6_ana);
X6_anaMetade = X6_ana(1:length(X6_ana)/2);

//f6=linspace(0,0.5*44100,floor(length(X6_ana)/2));
energia_ana6 = sum(abs(X6_ana).^2);

r = energia_ana6/energia_ana;


