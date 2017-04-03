%% La representaci�n gr�fica de f junto con su suma parcial de orden N de la serie de Fourier.
%  �til para ver si se aprecia el fen�meno de Gibbs

f = exp(-abs(x)); % Aqu� podemos cambiar la funci�n
N = 20; % Aqu� podemos cambiar el orden
I = 4; % Aqu� podemos cambiar el intervalo en el que dibujamos la funci�n

[y,S20]=SFCompleja(f,N); % Podemos usar otras funciones como SFSencos o SFPeriodo
y
figure
hold on
h1 = ezplot (f, [-I,I]); % Aqu� podemos cambiar el intervalo
h2 = ezplot (S20,[-I,I]);
hold off
set(h1,'color','r') % Aqu� podemos cambiar el color en el que lo dibujamos