function [x, y]= PAM_bin(palavra)
    m = length(palavra)

    //como os bits do delta só assumem 2 valores (0 e 1):
    ruido = 0.1*rand(1,m,'normal');
    j = 1;
    
    for i=1:m
        if palavra(i) == -1
            palavra(i) = 0
        end 
    end
    
    for i=1:2*m
        if modulo(i,4) == 0
            y(i) = 1;
        else 
            if modulo(i,4) == 1
                y(i) = 0;
            else
                y(i) = palavra(j) + ruido(j);
                j = j + 1;
            end
        end
    end
    
    x = linspace(0, 98281/264600,length(y));
    //"transformando" para o tempo

endfunction


[x_bin_ana,y_bin_ana]=PAM_bin(s_q_ana)
plot2d2(x_bin_ana,y_bin_ana)

//[x_bin_italo,y_bin_italo]=PAM_bin(s_q_italo)
//plot2d2(x_bin_italo,y_bin_italo)

//[x_bin_lara,y_bin_lara]=PAM_bin(s_q_lara)
//plot2d2(x_bin_lara,y_bin_lara)

//[x_bin_luiza,y_bin_luiza]=PAM_bin(s_q_luiza)
//plot2d2(x_bin_luiza,y_bin_luiza)
