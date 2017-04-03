%% Verifica la igualdad de Parseval en una señal x(n)

syms w
x=[1,0,-4,3]; % Aquí introducimos la señal x(n)
% X=MiDTFT(x,0,3) % descomentar esta linea y comentar la siguiente si se quiere utilizar una señal no transformada
X =1 + 3*exp(-w*3i) - 4*exp(-w*2i) % esta es la transformada. Comentar y descomentar la linea anterior para comprobarlo con una señal no transformada
LHS=int(abs(X).^2,-pi,pi)/(2*pi)
RHS=sum(abs(x).^2)

if LHS - RHS == 0
    disp('La igualdad de parseval se cumple')
else
    disp('La igualdad de parseval no se cumple')
end

%% Escribe las series de Fourier y comprueba si se cumple la igualdad de Parseval

syms x
f = 2+3*cos(pi*x/2)-1/2*cos(5*pi*x/8) % Aquí podemos cambiar la función
N = 5 % Aquí podemos cambiar el orden
T = 16; % Aquí podemos cambiar el periodo
[Cn,SF]=SFPeriodo(f,N,T);

LHS=sum(abs(Cn).^2)
RHS=1/T*int(f.^2,-8,8)

if LHS - RHS == 0
    disp('La igualdad de parseval se cumple')
else
    disp('La igualdad de parseval no se cumple')
end

%% Si necesitamos saber el periodo, hacemos el minimo comun multiplo

%A partir de 2+3*cos(pi*x/2)-1/2*cos(5*pi*x/8):

%cos(pi/2*t) - cambiamos el denominador según necesitemos
A=2*pi/(pi/2)

%cos(5*pi/8*t)
B=2*pi/(pi/8)

L = lcm(A,B)

%% Averiguar si se cumple la igualdad de parseval a partir de la energía de dos señales x(n) y X(k)

Enx = Energy(x) % Calculamos la Energía de x
EX=Energy(X)    % Calculamos la Energía de X
EnX = EX/8      % Dividimos entre 8 la energía de X

% Si ambos valores son iguales, la igualdad se cumple
if Enx - EnX == 0
    disp('La igualdad de parseval se cumple')
else
    disp('La igualdad de parseval no se cumple')
end