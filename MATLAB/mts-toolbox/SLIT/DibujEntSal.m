function [] = DibujEntSal( a, b )
% Devuelve la gráfica de secuencias finitas de entrada y salida de un Sistema LTI (SLIT) 

if nargin~=2
    error('Número de argumentos inválido, ejemplo de uso: DibujEntSal( a, b )');
end

% Introducimos el rango y la funcion a dibujar
n=input('Introduce el rango:');
x=input('Introduce la función:');

% Dibujamos la funcion
subplot(2,1,1)
stem(n,x)
title('Input')
xlabel('n'); ylabel('x(n)')
y=filter(b,a,x);
subplot(2,1,2)
stem(n,y)
title('Output')
xlabel('n'); ylabel('y(n)')


end