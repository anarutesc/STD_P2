function x_reamostrado=reamostragem(x,qtd_amostras)
    x_reamostrado(1)=x(1);
    for k=2:length(x)
        if(x(k-1)==x(k))
            for i=0:qtd_amostras
                x_reamostrado=[x_reamostrado x(k)]
            end
        end
        if(x(k-1)~=x(k))
        x_reamostrado= [x_reamostrado x(k-1)+(x(k)-x(k-1))/(qtd_amostras+1):(x(k)-x(k-1))/(qtd_amostras+1):x(k)];
        end
    end
endfunction
