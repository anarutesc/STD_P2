clear;
clc;
///////////////////////////////////////////////
//Atribuição dos sinais
///////////////////////////////////////////////
load('AnaRute.sod')
x_ana=x_a;
load('Italo.sod')
x_italo=x_a;
load('Lara.sod')
x_lara=x_a;
load('Luiza.sod')
x_luiza=x_a;

///////////////////////////////////////////////
//Plotagem do espectro de tempo
///////////////////////////////////////////////

t=linspace(0,98281/264600,98281)
figure;
plot(t,x_ana);
figure;
plot(t,x_italo);
figure;
plot(t,x_lara);
figure;
plot(t,x_luiza);

///////////////////////////////////////////////
//Cálculo das FFT's
///////////////////////////////////////////////

X_ANA=fft(x_ana);
for i=1:length(X_ANA)/2
    X_ANAMetade(i)=X_ANA(i)
end

X_ITALO=fft(x_italo);
for i=1:length(X_ITALO)/2
    X_ITALOMetade(i)=X_ITALO(i)
end

X_LARA=fft(x_lara);
for i=1:length(X_LARA)/2
    X_LARAMetade(i)=X_LARA(i)
end

X_LUIZA=fft(x_luiza);
for i=1:length(X_LUIZA)/2
    X_LUIZAMetade(i)=X_LUIZA(i)
end

////////////////////////////////////////////
//plotagem do expectro de frequencia
////////////////////////////////////////////

f=linspace(0,0.5*264600,floor(length(x_ana)/2));

figure();
plot(f,X_ANAMetade);
figure();
plot(f,X_ITALOMetade);
figure();
plot(f,X_LARAMetade);
figure();
plot(f,X_LUIZAMetade);
////////////////////////////////////////////
//Cálculos da energia
////////////////////////////////////////////
energia_ana=sum(abs(X_ANA).^2)
energia_italo=sum(abs(X_ITALO).^2)
energia_lara=sum(abs(X_LARA).^2)
energia_luiza=sum(abs(X_LUIZA).^2)

