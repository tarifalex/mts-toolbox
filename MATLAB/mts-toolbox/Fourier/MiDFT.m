function [X]= MiDFT(x)
%Funci�n que calcula matricialmente la Transformada Discreta de Fourier

if nargin~=1
    error('N�mero de argumentos inv�lido, ejemplo de uso: MiDFT(x)');
end

N=size(x,2); % Numero de elementos de la matriz
w=exp(-2*pi*j/N); 
n=0:N-1; 
k=n'; 
M=w.^(k*n);  
X=x*M;
end