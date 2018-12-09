function x_q = delta_mod(sinal,delta)
    e(1) = 0;
    e_q(1) = delta*sign(e(1));
    x_q(1) = 0;
    for k=1:length(sinal)
        e(k+1) = sinal(k) - x_q(k);
        e_q(k+1) = delta*sign(e(k));
        x_q(k+1) = x_q(k) + e_q(k); 
    end
endfunction
