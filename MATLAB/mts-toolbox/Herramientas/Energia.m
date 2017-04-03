function [ E ] = Energia( s )
%Cálculo de la energía de una señal finita

if nargin~=1
    error('Número de argumentos inválido, ejemplo de uso: Energia(s)');
end

% Utilizamos la formula de la energía
y = abs(s).^2;
E = sum(y);

end

