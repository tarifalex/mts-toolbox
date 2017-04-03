function [ y ] = Extens_Periodica( x, P )
% Repetici�n�peri�dica�de�una�secuencia�finita�

if nargin~=2
    error('N�mero de argumentos inv�lido, ejemplo de uso: pulso_rectangular(Secuencia,Periodo)');
end

if(size(P,1)>1) | (size(P,2)>1)
    error('El periodo debe ser un �nico n�mero');
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

