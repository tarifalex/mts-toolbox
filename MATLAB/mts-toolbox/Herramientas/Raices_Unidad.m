function[x]=Raices_Unidad(N)
% Muestra la lista de las raices en�simas de la unidad

if nargin~=1
    error('N�mero de argumentos inv�lido, ejemplo de uso: raices_unidad(N)');
end

if(N<=0)
    error('N debe ser mayor que 0');
end

w=exp(2*pi*j/N);
n=0:(N);
x=w.^n;
end

