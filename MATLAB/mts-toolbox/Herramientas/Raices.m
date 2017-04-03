function[x,S]=Raices(N, z)
% Muestra la lista de las raices enésimas de un número que puede ser complejo

if nargin~=2
    error('Número de argumentos inválido, ejemplo de uso: raices(N, z)');
end

if(N<=0)
    error('N debe ser mayor que 0');
end

syms x
x=solve(x.^N-z); % Resolvemos las raices de x
S=sum(x); % Obtenemos su suma
end

