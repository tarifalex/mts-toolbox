function[y]= Sampling(a,b,F)
%Discretiza una señal analógica en un intervalo [a, b] con una frecuencia F

if nargin~=3
    error('Número de argumentos inválido, ejemplo de uso: Sampling(a,b,Frecuencia)');
end

if(b<a)
    error('Intervalo erróneo.');
end

% Introducimos la funcion a muestrear
syms x 
f(x) = input ('Introduce una función con la variable simbólica x: ')
n = a:1/F:b;
y = f(n);

% Dibujamos la funcion
hold on
stem(n,y)
ezplot(f(x),[a,b])
hold off
end

