%% La representación gráfica de f junto con su suma parcial de orden N de la serie de Fourier.
%  Útil para ver si se aprecia el fenómeno de Gibbs

f = exp(-abs(x)); % Aquí podemos cambiar la función
N = 20; % Aquí podemos cambiar el orden
I = 4; % Aquí podemos cambiar el intervalo en el que dibujamos la función

[y,S20]=SFCompleja(f,N); % Podemos usar otras funciones como SFSencos o SFPeriodo
y
figure
hold on
h1 = ezplot (f, [-I,I]); % Aquí podemos cambiar el intervalo
h2 = ezplot (S20,[-I,I]);
hold off
set(h1,'color','r') % Aquí podemos cambiar el color en el que lo dibujamos