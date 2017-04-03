%% Se realiza el filtro de la media movil y se dibuja la se�al antes y despues de aplicarse el filtro

b=[0.2,0.2,0.2,0.2,0.2]; 
a=[1]
n=[0:20]; % Aqu� podemos cambiar el intervalo
x= rand(1,21) % Aqui usamos una se�al generada aleatoriamente, pero podemos usar cualquiera

% dibujamos la funci�n
subplot(2,1,1)
stem(n,x)
title('Entrada')
xlabel('n'); ylabel('x(n)')

y=filter(b,a,x) % usamos el filtro con los par�metros de la media movil

%dibujamos la funci�n filtrada
subplot(2,1,2)
stem(n,y)
title('Salida')
xlabel('n'); ylabel('y(n)')