function [ h ] = Transfer( a, b )
% Devuelve la función de transferencia de un sistema LTI. Halla la respuesta al impulso y su diagrama de ceros y polos correspondiente

if nargin~=2
    error('Número de argumentos inválido, ejemplo de uso: Transfer( a, b )');
end

h = tf(a, b) % Cálculo de la función de tranferencia

% Dibujamos la respuesta al impulso y su diagrama de ceros y polos
figure('name', 'zplane', 'position',[179 83 560 420])
impz(a, b)
title('Impulse response')
figure('name', 'impulse response', 'position',[751 83 560 420])
zplane(a, b)
title('Poles and zeros')
end