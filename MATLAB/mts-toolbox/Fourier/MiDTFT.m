function [ y ] = MiDTFT( na, nb, x )
% Devuelve la Transformada de Fourier de Tiempo Discreto de la se�al x(n).

if nargin~=3
    error('N�mero de argumentos inv�lido, ejemplo de uso: MiDTFT( na, nb, x ) ');
end

if(nb<na)
    error('Intervalo err�neo.');
end

n = na:nb; %Definimos el intervalo de la se�al.
syms w;
y = sum(x.*exp(-1i*n*w));
 
end
