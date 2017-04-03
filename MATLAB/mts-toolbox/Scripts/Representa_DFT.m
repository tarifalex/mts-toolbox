%% Dada una se�al, calcula su DFT y se representa junto a su autocorrelaci�n, el m�dulo de su transformada y sus fases

disp('Definimos n y la se�al x')
n=0:7; % Aqu� cambiamos su intervalo
x=[2,5,0,3,1,9,9,2] % Aqu� cambiamos la se�al
disp('La DFT es:')
X=fft(x) % calculamos la transformada r�pida de Fourier
disp('La autocorrelaci�n es:')
c=xcorr(x) % calculamos la autocorrelaci�n
subplot(2,2,1)
stem(n,x)
title('Datos')
subplot (2,2,2)
stem (-7:7,c)
title('Aautocorrelaci�n')
subplot(2,2,3)
stem(n, abs(X))
title('M�dulo(DFT(x))')
subplot(2,2,4)
stem(n, phase(X))
title('Fase(DFT(x))')