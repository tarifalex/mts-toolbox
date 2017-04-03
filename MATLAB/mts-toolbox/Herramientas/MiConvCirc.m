function [y]= MiConvCirc(x1,x2)
% Calcula la convoluci�n circular de dos vectores de la misma longitud matricialmente

if nargin~=2
    error('N�mero de argumentos inv�lido, ejemplo de uso: MyConvCirc(x1,x2)');
end

if length(x1) ~= length(x2)
    error('los vectores deben ser de la misma longitud');
end

% Utilizamos una matriz para hallar la convoluci�n circular
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
