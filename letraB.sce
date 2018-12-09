//////////////////////////////
//Sinal de Ana
//////////////////////////////

energia_anaMetade = sum(abs(X_ANAMetade).^2);
largBanda = 0;
for(i = 1 : length(X_ANAMetade))
    largBanda(i) = X_ANAMetade(i);
    energia_anaP = sum(abs(largBanda).^2);
    energia_relativa(i) = energia_anaP/energia_anaMetade;
end
plot(f,energia_relativa,'red')

//////////////////////////////
//Sinal de Italo
//////////////////////////////

energia_italoMetade = sum(abs(X_ITALOMetade).^2);
largBanda = 0;
for(i = 1 : length(X_ITALOMetade))
    largBanda(i) = X_ITALOMetade(i);
    energia_italoP = sum(abs(largBanda).^2);
    energia_relativa(i) = energia_italoP/energia_italoMetade;
end

plot(f,energia_relativa,'blue')

//////////////////////////////
//Sinal de Lara
//////////////////////////////

energia_laraMetade = sum(abs(X_LARAMetade).^2);
largBanda = 0;
for(i = 1:length(X_LARAMetade))
    largBanda(i) = X_LARAMetade(i);
    energia_laraP = sum(abs(largBanda).^2);
    energia_relativa(i) = energia_laraP/energia_laraMetade;
end

plot(f,energia_relativa,'green')

//////////////////////////////
//Sinal de Luiza
//////////////////////////////

energia_luizaMetade = sum(abs(X_LUIZAMetade).^2);
largBanda = 0;
for(i= 1 : length(X_LUIZAMetade))
    largBanda(i) = X_LUIZAMetade(i);
    energia_luizaP = sum(abs(largBanda).^2);
    energia_relativa(i) = energia_luizaP/energia_luizaMetade;
end

plot(f,energia_relativa,'black')
