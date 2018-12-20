H = [zeros(1,10000) ones(1,40000) zeros(1,264600 - 50000)]
ht = ifft(H)
h = 1e-4


//bit = s_q_ana;
//bit = s_q_italo;
//bit = s_q_lara;
bit = s_q_ana;


for k=1:length(bit)
    if bit(k)==1  | bit(k)==0
        seq_bit(k) = 1;
        f(k) = 2750;
    end
    if bit(k)==-1
        seq_bit(k) = 0;
        f(k) = 1250;
    end

    c(k) = cos(2*%pi*h*k*f(k));
    s(k) = c(k);

end
y = convol(s,ht)
t=linspace(0,98282/264600,length(x_q_ana)+1)
//plot(t,s(1:1000))
//plot(t,y(1:1000))

H1 = [zeros(1,12000) ones(1,3000) zeros(1,37000)]
ht1 = ifft(H1)
H2 = [zeros(1, 27300) ones(1,9000) zeros(22300)]
ht2 = ifft(H2)
sin_f2 = convol(y,ht2)



//plot(t,sin_f2(1:1000))

x(1)=0
for k=1:length(bit)
    dx = -1000*x(k)+1000*abs(sin_f2(k))
    x(k+1) = x(k)+h*dx
end
plot(t,x)
for j=1:10
    if x(j*100)>=0.24
        bit_rec(j) = 0    
    end
    if x(j*100)<0.24
        bit_rec(j) = 1   
    end

end




