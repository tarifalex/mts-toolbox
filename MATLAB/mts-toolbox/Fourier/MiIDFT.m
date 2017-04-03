function [x]= MiIDFT(X)
% Función que calcula matricialmente la Transformada Discreta de Fourier Inversa

if nargin~=1
    error('Número de argumentos inválido, ejemplo de uso: MiIDFT(x)');
end

N=size(X,2); % Numero de elementos de la matriz
w=exp(-2*pi*j/N); 
n=0:N-1; 
k=n'; 
M=conj(w).^(k*n); 
x=(X*M)/N;
end

