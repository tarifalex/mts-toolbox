function [y]= MiConvCirc(x1,x2)
% Calcula la convolución circular de dos vectores de la misma longitud matricialmente

if nargin~=2
    error('Número de argumentos inválido, ejemplo de uso: MyConvCirc(x1,x2)');
end

if length(x1) ~= length(x2)
    error('los vectores deben ser de la misma longitud');
end

% Utilizamos una matriz para hallar la convolución circular
N=size(x1,2);
for k=1:N % Fila k  
    for m=1:N  % Columna m 
        if k<=m
          Mat(k,m)=x2(m+1-k);
        else Mat(k,m)=x2(N+m+1-k);
        end
    end
end
y=x1*Mat;
end
