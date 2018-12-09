clear;
clc;
load('C:\Users\ana_r\Documents\UFRN\2018.2\STD\P2\Sinais_P2\AnaRute.sod')
x_ana=x_a;
load('C:\Users\ana_r\Documents\UFRN\2018.2\STD\P2\Sinais_P2\Italo.sod')
x_italo=x_a;
load('C:\Users\ana_r\Documents\UFRN\2018.2\STD\P2\Sinais_P2\Lara.sod')
x_lara=x_a;
load('C:\Users\ana_r\Documents\UFRN\2018.2\STD\P2\Sinais_P2\Luiza.sod')
x_luiza=x_a;
exec('C:\Users\ana_r\Documents\UFRN\2018.2\STD\P2\Codigos_STD\STD_cod_lin_e_TDM\STD cod lin e TDM\amostragem_sinal.sce')
exec('C:\Users\ana_r\Documents\UFRN\2018.2\STD\P2\Codigos_STD\STD_cod_lin_e_TDM\STD cod lin e TDM\quantizacao_midrise.sce')
exec('C:\Users\ana_r\Documents\UFRN\2018.2\STD\P2\Codigos_STD\STD_cod_lin_e_TDM\STD cod lin e TDM\codificacao_pcm.sce')
exec('C:\Users\ana_r\Documents\UFRN\2018.2\STD\P2\Codigos_STD\STD_cod_lin_e_TDM\STD cod lin e TDM\plot_legivel.sce')

t=linspace(0,98281/264600,98281)
sinal_mensagem_ana = x_ana;
sinal_mensagem_italo = x_italo;
sinal_mensagem_lara = x_lara;
sinal_mensagem_luiza = x_luiza;

//amostragem do sinal mensagem de Ana:
sinal_amostrado_ana = amostragem_sinal(t,sinal_mensagem_ana,100/32200)'
sinal_discretizado_ana = quantizacao_midrise(sinal_amostrado_ana,floor(min(x_ana)),ceil(max(x_ana)),4)'

//amostragem do sinal mensagem de Italo:
sinal_amostrado_italo = amostragem_sinal(t,sinal_mensagem_italo,100/32200)'
sinal_discretizado_italo = quantizacao_midrise(sinal_amostrado_italo,floor(min(x_italo)),ceil(max(x_italo)),4)'

//amostragem do sinal mensagem de Lara:
sinal_amostrado_lara = amostragem_sinal(t,sinal_mensagem_lara,100/32200)'
sinal_discretizado_lara = quantizacao_midrise(sinal_amostrado_lara,floor(min(x_lara)),ceil(max(x_lara)),4)'

//amostragem do sinal mensagem de Luiza:
sinal_amostrado_luiza = amostragem_sinal(t,sinal_mensagem_luiza,100/32200)'
sinal_discretizado_luiza = quantizacao_midrise(sinal_amostrado_luiza,floor(min(x_luiza)),ceil(max(x_luiza)),4)'


//plot Sinal - plot Palavra - Ana Rute
//plot_legivel(t, [sinal_discretizado_ana; sinal_amostrado_ana; sinal_mensagem_ana],['Sinal Discretizado';'Sinal Amostrado'; 'Sinal Mensagem'],'Tempo','Amplitude',[0 98281/264600 floor(min(x_ana)) ceil(max(x_ana))],3,1)
plot_legivel(t, sinal_discretizado_ana,'Sinal Discretizado','Tempo','Amplitude',[0 98281/264600 floor(min(x_ana)) ceil(max(x_ana))],3,1)
palavra_pcm_ana = codificacao_pcm(sinal_discretizado_ana,floor(min(x_ana)),ceil(max(x_ana)),4);
plot_legivel(t,palavra_pcm_ana,['Bit 1';'Bit 2'; 'Bit 3'; 'Bit 4'],'Tempo','Amplitude',[0 98281/264600 0 1],3,2)

//plot Sinal - plot Palavra - Italo
//plot_legivel(t,[sinal_discretizado_italo; sinal_amostrado_italo; sinal_mensagem_italo],['Sinal Discretizado';'Sinal Amostrado'; 'Sinal Mensagem'],'Tempo','Amplitude',[0 98281/264600 floor(min(x_italo)) ceil(max(x_italo))],3,3)
plot_legivel(t,sinal_discretizado_italo,'Sinal Discretizado','Tempo','Amplitude',[0 98281/264600 floor(min(x_italo)) ceil(max(x_italo))],3,3)
palavra_pcm_italo = codificacao_pcm(sinal_discretizado_italo,floor(min(x_italo)),ceil(max(x_italo)),4);
plot_legivel(t,palavra_pcm_italo,['Bit 1';'Bit 2'; 'Bit 3'; 'Bit 4'],'Tempo','Amplitude',[0 98281/264600 0 1],3,4)

//plot Sinal - plot Palavra - Lara
//plot_legivel(t,[sinal_discretizado_lara; sinal_amostrado_lara; sinal_mensagem_lara],['Sinal Discretizado';'Sinal Amostrado'; 'Sinal Mensagem'],'Tempo','Amplitude',[0 98281/264600 floor(min(x_lara)) ceil(max(x_lara))],3,5)
plot_legivel(t,sinal_discretizado_lara,'Sinal Discretizado','Tempo','Amplitude',[0 98281/264600 floor(min(x_lara)) ceil(max(x_lara))],3,5)
palavra_pcm_lara = codificacao_pcm(sinal_discretizado_lara,floor(min(x_lara)),ceil(max(x_lara)),4);
plot_legivel(t,palavra_pcm_lara,['Bit 1';'Bit 2'; 'Bit 3'; 'Bit 4'],'Tempo','Amplitude',[0 98281/264600 0 1],3,6)

//plot Sinal - plot Palavra - Luiza
//plot_legivel(t,[sinal_discretizado_luiza; sinal_amostrado_luiza; sinal_mensagem_luiza],['Sinal Discretizado';'Sinal Amostrado'; 'Sinal Mensagem'],'Tempo','Amplitude',[0 98281/264600 floor(min(x_luiza)) ceil(max(x_luiza))],3,7)
plot_legivel(t,sinal_discretizado_luiza,'Sinal Discretizado','Tempo','Amplitude',[0 98281/264600 floor(min(x_luiza)) ceil(max(x_luiza))],3,7)
palavra_pcm_luiza = codificacao_pcm(sinal_discretizado_luiza,floor(min(x_luiza)),ceil(max(x_luiza)),4);
plot_legivel(t,palavra_pcm_luiza,['Bit 1';'Bit 2'; 'Bit 3'; 'Bit 4'],'Tempo','Amplitude',[0 98281/264600 0 1],3,8)

