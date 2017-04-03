function [x,n] = Delta(n0,n1,n2)
% Define una secuencia de impulso unitario (delta(n-n0)) en un rango [n1,n2]

if nargin~=3
    error('Número de argumentos inválido, ejemplo de uso: delta(n0,n1,n2)');
end

if(n0<n1)
    error('n0 debe ser mayor o igual que n1');
elseif(n0>n2)
    error('n0 debe ser menor o igual que n2')
end

% Definimos el impulso
n = n1:n2; 
x = (n-n0)==0;
end