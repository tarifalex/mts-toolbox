function[s] = Sum_Matricial( m )
% Calcula la suma de todos los valores de la funci�n m

if nargin~=1
    error('N�mero de argumentos inv�lido, ejemplo de uso: Energia(s)');
end

% La suma de todos los elementos de una matriz se puede lograr aplicando dos veces el comando sum
s = sum(sum(m));

end

