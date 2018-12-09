function [x, y]= PAM_mario(palavra)
    m = length(palavra)

    //força o -1 a virar 0
    y = (palavra+1)/2;
    
    ruido = 0.1*rand(1,m,'normal');
    for i=1:m
        y(i) = y(i) + ruido(i);
    end
    
    x = 1:m
    //"transformando" para o tempo
    x = x./(264600)

endfunction

//[x_mario_ana,y_mario_ana]=PAM_mario(s_q_ana)
//plot2d2(x_mario_ana,y_mario_ana)

[x_mario_italo,y_mario_italo]=PAM_mario(s_q_italo)
plot2d2(x_mario_italo,y_mario_italo)

//[x_mario_lara,y_mario_lara]=PAM_mario(s_q_lara)
//plot2d2(x_mario_lara,y_mario_lara)

//[x_mario_luiza,y_mario_luiza]=PAM_mario(s_q_luiza)
//plot2d2(x_mario_luiza,y_mario_luiza)

