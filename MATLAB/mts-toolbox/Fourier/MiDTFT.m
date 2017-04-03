function [ y ] = MiDTFT( na, nb, x )
% Devuelve la Transformada de Fourier de Tiempo Discreto de la señal x(n).

if nargin~=3
    error('Número de argumentos inválido, ejemplo de uso: MiDTFT( na, nb, x ) ');
end

if(nb<na)
    error('Intervalo erróneo.');
end

n = na:nb; %Definimos el intervalo de la señal.
syms w;
y = sum(x.*exp(-1i*n*w));
 
end
