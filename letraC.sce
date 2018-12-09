///////////////////////////////
//Reamostragem Ana Rute
///////////////////////////////
j=1
for i=1:4:length(x_ana)
    x4_ana(j)=x_ana(i)
    j=j+1
end

f4=linspace(0,0.5*66150,floor(length(x4_ana)/2));

X4_ANA=fft(x4_ana);

for i=1:length(X4_ANA)/2
    X4_ANAMetade(i)=X4_ANA(i)
end

figure
plot(f4,X4_ANAMetade)

///////////////////////////////
//Reamostragem Italo
///////////////////////////////
j=1
for i=1:4:length(x_italo)
    x4_italo(j)=x_italo(i)
    j=j+1
end

f4=linspace(0,0.5*66150,floor(length(x4_italo)/2));

X4_ITALO=fft(x4_italo);

for i=1:length(X4_ITALO)/2
    X4_ITALOMetade(i)=X4_ITALO(i)
end

figure
plot(f4,X4_ITALOMetade)

///////////////////////////////
//Reamostragem Lara
///////////////////////////////
j=1
for i=1:4:length(x_lara)
    x4_lara(j)=x_lara(i)
    j=j+1
end

f4=linspace(0,0.5*66150,floor(length(x4_lara)/2));

X4_LARA=fft(x4_lara);

for i=1:length(X4_LARA)/2
    X4_LARAMetade(i)=X4_LARA(i)
end

figure
plot(f4,X4_LARAMetade)

///////////////////////////////
//Reamostragem Luiza
///////////////////////////////
j=1
for i=1:4:length(x_luiza)
    x4_luiza(j)=x_luiza(i)
    j=j+1
end

f4=linspace(0,0.5*66150,floor(length(x4_luiza)/2));

X4_LUIZA=fft(x4_luiza);

for i=1:length(X4_LUIZA)/2
    X4_LUIZAMetade(i)=X4_LUIZA(i)
end

figure
plot(f4,X4_LUIZAMetade)
