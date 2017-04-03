function[x]=Raices_Unidad(N)
% Muestra la lista de las raices enésimas de la unidad

if nargin~=1
    error('Número de argumentos inválido, ejemplo de uso: raices_unidad(N)');
end

if(N<=0)
    error('N debe ser mayor que 0');
end

w=exp(2*pi*j/N);
n=0:(N);
x=w.^n;
end

