
//modulacao delta

load('C:\Users\ana_r\Documents\UFRN\2018.2\STD\P2\Sinais_P2\AnaRute.sod')
x_ana=x_a;
x_ana(length(x_ana)+1)=0
load('C:\Users\ana_r\Documents\UFRN\2018.2\STD\P2\Sinais_P2\Italo.sod')
x_italo=x_a;
x_italo(length(x_italo)+1)=0
load('C:\Users\ana_r\Documents\UFRN\2018.2\STD\P2\Sinais_P2\Lara.sod')
x_lara=x_a;
x_lara(length(x_lara)+1)=0
load('C:\Users\ana_r\Documents\UFRN\2018.2\STD\P2\Sinais_P2\Luiza.sod')
x_luiza=x_a;
x_luiza(length(x_luiza)+1)=0

exec('C:\Users\ana_r\Documents\UFRN\2018.2\STD\P2\Sinais_P2\delta_mod.sce')
exec('C:\Users\ana_r\Documents\UFRN\2018.2\STD\P2\Sinais_P2\reamostragem.sce')
//exec('C:\Users\ana_r\Documents\UFRN\2018.2\STD\P2\Sinais_P2\plot_legivel.sce')

x_ana_reamostrado=reamostragem(x_ana,3)
x_italo_reamostrado=reamostragem(x_italo,3)
x_lara_reamostrado=reamostragem(x_lara,3)
x_luiza_reamostrado=reamostragem(x_luiza,3)

delta = 0.03;

[x_q_ana, s_q_ana] = delta_mod(x_ana_reamostrado, delta)
[x_q_italo, s_q_italo] = delta_mod(x_italo_reamostrado, delta)
[x_q_lara, s_q_lara] = delta_mod(x_lara_reamostrado, delta)
[x_q_luiza, s_q_luiza] = delta_mod(x_luiza_reamostrado, delta)

t=linspace(0,98282/264600,length(x_q_ana))

x_ana_reamostrado(length(x_ana_reamostrado)+1)=0
x_italo_reamostrado(length(x_italo_reamostrado)+1)=0
x_lara_reamostrado(length(x_lara_reamostrado)+1)=0
x_luiza_reamostrado(length(x_luiza_reamostrado)+1)=0

/*t=0:passo:tempo_final;

x2_ana = x_ana(1:length(t));
e_ana(1) = 0;
e_q_ana(1) = delta*sign(e_ana(1));
x_q_ana(1) = 0;

x2_italo = x_italo(1:length(t));
e_italo(1) = 0;
e_q_italo(1) = delta*sign(e_italo(1));
x_q_italo(1) = 0;

x2_lara = x_lara(1:length(t));
e_lara(1) = 0;
e_q_lara(1) = delta*sign(e_lara(1));
x_q_lara(1) = 0;

x2_luiza = x_luiza(1:length(t));
e_luiza(1) = 0;
e_q_luiza(1) = delta*sign(e_luiza(1));
x_q_luiza(1) = 0;


for k=1:floor(tempo_final/passo)

    e_ana(k+1) = x2_ana(k) - x_q_ana(k);
    e_q_ana(k+1) = delta*sign(e_ana(k));
    x_q_ana(k+1) = x_q_ana(k) + e_q_ana(k);

    e_italo(k+1) = x2_italo(k) - x_q_italo(k);
    e_q_italo(k+1) = delta*sign(e_italo(k));
    x_q_italo(k+1) = x_q_italo(k) + e_q_italo(k);
    
    e_lara(k+1) = x2_lara(k) - x_q_lara(k);
    e_q_lara(k+1) = delta*sign(e_lara(k));
    x_q_lara(k+1) = x_q_lara(k) + e_q_lara(k);
    
    e_luiza(k+1) = x2_luiza(k) - x_q_luiza(k);
    e_q_luiza(k+1) = delta*sign(e_luiza(k));
    x_q_luiza(k+1) = x_q_luiza(k) + e_q_luiza(k);

end*/

plot_legivel(t, x_ana_reamostrado,'Sinal Reamostrado','Tempo','Amplitude',[0 98282/264600  floor(min(x_ana_reamostrado)) ceil(max(x_ana_reamostrado))],3,1)
plot_legivel(t, x_q_ana,'Sinal Quantizado','Tempo','Amplitude',[0 98282/264600 floor(min(x_q_ana)) ceil(max(x_q_ana))],3,2)

/*figure
plot2d2(t,x_italo_reamostrado,2)
figure
plot2d2(t,x_q_italo,5)

figure
plot2d2(t,x_lara_reamostrado,2)
figure
plot2d2(t,x_q_lara,5)

figure
plot2d2(t,x_luiza_reamostrado,2)
figure
plot2d2(t,x_q_luiza,5)
*/
