function [X]= MiDFT(x)
%Función que calcula matricialmente la Transformada Discreta de Fourier

if nargin~=1
    error('Número de argumentos inválido, ejemplo de uso: MiDFT(x)');
end

N=size(x,2); % Numero de elementos de la matriz
w=exp(-2*pi*j/N); 
n=0:N-1; 
k=n'; 
M=w.^(k*n);  
X=x*M;
end