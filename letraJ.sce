function [x, y]= PAM_bin(palavra)
    m = length(palavra)
   
   //como os bits do delta só assumem 2 valores (1 e -1):
    ruido = 0.1*rand(1,m,'normal');
    for i=1:m
        y(i) = palavra(i) + ruido(i);
    end
       
    x = 1:m
    //"transformando" para o tempo
    x = x./(264600)

endfunction


[x_bin_ana,y_bin_ana]=PAM_bin(s_q_ana)
plot2d2(x_bin_ana,y_bin_ana)

//[x_bin_italo,y_bin_italo]=PAM_bin(s_q_italo)
//plot2d2(x_bin_italo,y_bin_italo)

//[x_bin_lara,y_bin_lara]=PAM_bin(s_q_lara)
//plot2d2(x_bin_lara,y_bin_lara)

//[x_bin_luiza,y_bin_luiza]=PAM_bin(s_q_luiza)
//plot2d2(x_bin_luiza,y_bin_luiza)
