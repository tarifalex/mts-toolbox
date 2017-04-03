function [ h ] = Transfer( a, b )
% Devuelve la funci�n de transferencia de un sistema LTI. Halla la respuesta al impulso y su diagrama de ceros y polos correspondiente

if nargin~=2
    error('N�mero de argumentos inv�lido, ejemplo de uso: Transfer( a, b )');
end

h = tf(a, b) % C�lculo de la funci�n de tranferencia

% Dibujamos la respuesta al impulso y su diagrama de ceros y polos
figure('name', 'zplane', 'position',[179 83 560 420])
impz(a, b)
title('Impulse response')
figure('name', 'impulse response', 'position',[751 83 560 420])
zplane(a, b)
title('Poles and zeros')
end