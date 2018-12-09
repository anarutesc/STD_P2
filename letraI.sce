function [x, y]= PAM_mario(palavra,m)
    [l,c] = size(palavra)

    //conversão dos bits da palavra pcm em um numero binario
    for i=1:m
        soma = 0;
        for j=1:l
            soma = soma + palavra(j,i)*10^(j-1) 
        end
        b(i) = bin2dec(string(soma));
    end

    ruido = 0.1*rand(1,length(b),'normal');
    for i=1:length(b)
        b(i) = b(i) + ruido(i);
    end
    
    x= 1:m
    //"transformando" para o tempo
    x = x./264600
    
    //cada vetor irá assumir valores de 0 a 15 (conversão da palavra pcm)
    y = b;
   
    

endfunction

tam = 98281;

//[x_mario_ana,y_mario_ana]=PAM_mario(palavra_pcm_ana,tam)
//plot2d2(x_mario_ana,y_mario_ana)

[x_mario_italo,y_mario_italo]=PAM_mario(palavra_pcm_italo,tam)
plot2d2(x_mario_italo,y_mario_italo)

//[x_mario_lara,y_mario_lara]=PAM_mario(palavra_pcm_lara,tam)
//plot2d2(x_mario_lara,y_mario_lara)

//[x_mario_luiza,y_mario_luiza]=PAM_mario(palavra_pcm_luiza,tam)
//plot2d2(x_mario_luiza,y_mario_luiza)

