function sinal_c = canal(sinal_o, op)
    // op = 0: passa baixa
    // op = 1: passa faixa
    if op == 0
        H = [ones(1,25000) zeros(1,40000) zeros(1,5000)]
    else

    end
endfunction
