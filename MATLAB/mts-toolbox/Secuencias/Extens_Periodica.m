function [ y ] = Extens_Periodica( x, P )
% Repetición periódica de una secuencia finita 

if nargin~=2
    error('Número de argumentos inválido, ejemplo de uso: pulso_rectangular(Secuencia,Periodo)');
end

if(size(P,1)>1) | (size(P,2)>1)
    error('El periodo debe ser un único número');
end

if(P<0)
    error('El periodo debe ser positivo');
end

% Repetimos la secuencia dada P veces
y = [];
for m = 1:P
   y = [y, x]; 
end

end

