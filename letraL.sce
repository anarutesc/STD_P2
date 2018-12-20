H = [zeros(1,10000) ones(1,40000) zeros(1,10000)]
ht = ifft(H)
h = 1e-4

bit_ana = palavra_pcm_ana;
bit_italo = palavra_pcm_italo;
bit_lara = palavra_pcm_lara;
bit_luiza = palavra_pcm_luiza;

for i = 1:4
    for k=1:1000
        if bit(i,ceil(k/100))==1
            seq_bit(i,k) = 1;
        end
        if bit(i,ceil(k/100))==0
            seq_bit(i,k) = 0;
        end

        c(i,k) = cos(2*%pi*h*k*1500);
        s(i,k) = seq_bit(i,k)*c(i,k);

    end
end

y = convol(s,ht)
t = linspace(0,5,1000)
//plot(t,y(1:1000))
//plot(t,y(1:50000))
x(1)=0
for k=1:1000
    dx = -1000*x(k)+1000*abs(y(k))
    x(k+1) = x(k)+h*dx
end
plot(t,x(1:1000))
for j=1:10
    if x(j*100)>=0.13
        bit_rec(j) = 1    
    end
    if x(j*100)<0.13
        bit_rec(j) = 0   
    end

end


