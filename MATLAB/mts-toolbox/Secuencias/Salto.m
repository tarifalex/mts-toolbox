function[x,n]=Salto(n0,n1,n2)
% Secuencia�escal�n,�u(n-n0),�definida�en�[n1, n2] 

if nargin~=3
    error('N�mero de argumentos inv�lido, ejemplo de uso: salto(n0,n1,n2)');
end

if(n0<n1)
    error('n0 debe ser mayor o igual que n1');
elseif(n0>n2)
    error('n0 debe ser menor o igual que n2')
end

% Definimos el escal�n
n=[n1:n2]; 
x=[(n-n0)>=0];
end

