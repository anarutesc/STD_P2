//H = [ones(1,25000) zeros(1,264600 - 25000)]
H = [zeros(1,10000) ones(1,40000) zeros(1,264600 - 50000)]
ht = ifft(H)
h = 1e-4

//bit = s_q_ana;
//bit = s_q_italo;
//bit = s_q_lara;
bit = s_q_luiza;

for k=1:length(bit)
    if bit(k)==1 | bit(k)==0
        seq_bit(k) = 1;
    end
    if bit(k)==-1
        seq_bit(k) = 0;
    end

    c(k) = cos(2*%pi*h*k*1500);
    s(k) = seq_bit(k)*c(k);

end
y = convol(s,ht)
t=linspace(0,98282/264600,length(bit)+1)
//plot(t,y(1:1000))
//plot(t,y(1:50000))
x(1)=0
for k=1:length(bit)
    dx = -1000*x(k)+1000*abs(y(k))
    x(k+1) = x(k)+h*dx
end
plot(t,x)
for j=1:10
    if x(j*100)>=0.13
        bit_rec(j) = 1    
    end
    if x(j*100)<0.13
        bit_rec(j) = 0   
    end

end


