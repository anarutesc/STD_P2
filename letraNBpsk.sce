H = [zeros(1,10000) ones(1,40000) zeros(1,264600 - 50000)]
ht = ifft(H)
h = 1e-4

//bit = s_q_ana;
bit = s_q_italo;
//bit = s_q_lara;
//bit = s_q_luiza;

for k=1:length(bit)
    if bit(k)==1 | bit(k)==0
        seq_bit(k) = 1;
        phi(k) = 0;
    end
    if bit(k)==-1
        seq_bit(k) = 0;
        phi(k) = %pi;
    end

    c(k) = cos(2*%pi*h*k*1500+phi(k));
    s(k) = c(k);

end
y = convol(s,ht)
t=linspace(0,98282/264600,length(bit)+1)
//plot(t,s(1:1000))
//plot(t,y(1:50000))
fpb(1) = 0;
for k=1:length(bit)
    c_rec(k) = cos(2*%pi*h*k*1500);
    x(k) = s(k)*c_rec(k)
    dfpb = -1000*fpb(k) + 1000*x(k)
    fpb(k+1) = fpb(k) + h*dfpb 

end

plot(t,fpb)
for j=1:10
    if fpb(j*100)>=0
        bit_rec(j) = 1    
    end
    if fpb(j*100)<0
        bit_rec(j) = 0  
    end
end
