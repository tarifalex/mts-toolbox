%% Se realiza el filtro de la media movil y se dibuja la señal antes y despues de aplicarse el filtro

b=[0.2,0.2,0.2,0.2,0.2]; 
a=[1]
n=[0:20]; % Aquí podemos cambiar el intervalo
x= rand(1,21) % Aqui usamos una señal generada aleatoriamente, pero podemos usar cualquiera

% dibujamos la función
subplot(2,1,1)
stem(n,x)
title('Entrada')
xlabel('n'); ylabel('x(n)')

y=filter(b,a,x) % usamos el filtro con los parámetros de la media movil

%dibujamos la función filtrada
subplot(2,1,2)
stem(n,y)
title('Salida')
xlabel('n'); ylabel('y(n)')