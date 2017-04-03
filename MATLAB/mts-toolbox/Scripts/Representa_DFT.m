%% Dada una señal, calcula su DFT y se representa junto a su autocorrelación, el módulo de su transformada y sus fases

disp('Definimos n y la señal x')
n=0:7; % Aquí cambiamos su intervalo
x=[2,5,0,3,1,9,9,2] % Aquí cambiamos la señal
disp('La DFT es:')
X=fft(x) % calculamos la transformada rápida de Fourier
disp('La autocorrelación es:')
c=xcorr(x) % calculamos la autocorrelación
subplot(2,2,1)
stem(n,x)
title('Datos')
subplot (2,2,2)
stem (-7:7,c)
title('Aautocorrelación')
subplot(2,2,3)
stem(n, abs(X))
title('Módulo(DFT(x))')
subplot(2,2,4)
stem(n, phase(X))
title('Fase(DFT(x))')