function [x, y, b]= PAM_bin(palavra)
    [l,m] = size(palavra)

    //conversão dos bits da palavra pcm em um numero binario
    for i=1:m
        soma = 0;
        for j=1:l
            soma = soma + palavra(j,i)*10^(j-1) 
        end
        b(i) = bin2dec(string(soma));
    end

    //adicionando um ruído passo a passo ('normal' implica numa gaussiana de média 0 e desvio 1, e por isso multiplica-se por 0.1)
    ruido = 0.1*rand(1,length(b),'normal');

    x= 1:(2^4 + 2)*m
   
    /*for i=1:length(x)
        if modulo(i,2^4 +2) < b(ceil(i/(2^4 +2))) //para começar de 1 e forçar a posição 18n a entrar na condição
            y(i) = 1
        else 
            if modulo(i,2^4 +2) == b(ceil(i/(2^4 + 2)))
                y(i) = 1
            else
                y(i) = 0
            end
        end
    end
    */


    //"transformando" para o tempo
    x = x./(264600*(2^4 + 2))

endfunction


[x_bin_ana,y_bin_ana,b_ana]=PAM_bin(palavra_pcm_ana)
plot2d2(x_bin_ana(1:500),y_bin_ana(1:500))

//[x_bin_italo,y_bin_italo,b_italo]=PAM_bin(palavra_pcm_italo)
//plot2d2(x_bin_italo,y_bin_italo)

//[x_bin_lara,y_bin_lara,b_lara]=PAM_bin(palavra_pcm_lara)
//plot2d2(x_bin_lara,y_bin_lara)

//[x_bin_luiza,y_bin_luiza,b_luiza]=PAM_bin(palavra_pcm_luiza)
//plot2d2(x_bin_luiza(1:700),y_bin_luiza(1:700))
