function [ E ] = Energia( s )
%C�lculo�de�la�energ�a�de�una�se�al�finita

if nargin~=1
    error('N�mero de argumentos inv�lido, ejemplo de uso: Energia(s)');
end

% Utilizamos la formula de la energ�a
y = abs(s).^2;
E = sum(y);

end

