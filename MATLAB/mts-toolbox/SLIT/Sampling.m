function[y]= Sampling(a,b,F)
%Discretiza una se�al anal�gica en un intervalo [a, b] con una frecuencia F

if nargin~=3
    error('N�mero de argumentos inv�lido, ejemplo de uso: Sampling(a,b,Frecuencia)');
end

if(b<a)
    error('Intervalo err�neo.');
end

% Introducimos la funcion a muestrear
syms x 
f(x) = input ('Introduce una funci�n con la variable simb�lica x: ')
n = a:1/F:b;
y = f(n);

% Dibujamos la funcion
hold on
stem(n,y)
ezplot(f(x),[a,b])
hold off
end

