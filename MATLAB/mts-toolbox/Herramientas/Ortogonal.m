function [] = Ortogonal(A,a,b) 
% Determina si un conjunto de funciones reales es ortogonal en el rango [a,b] 
% A es un conjunto de funciones. Por ejemplo A=[1, sin((1:3)*x), cos((1:3)*x), x]

if nargin~=3
    error('Número de argumentos inválido, ejemplo de uso: ortogonal(Funciones,a,b) ');
end

if(b<a)
    error('Intervalo erróneo.');
end

s =[];
n=size(A,2); % Comprobamos cuantas funciones tenemos en el conjunto A
for i=1 : n
    for j=i+1 : n
        s=[s, int(A(i)*A(j),a,b)];  
    end
end

% Si S es 0, el conjunto será ortogonal
if s == 0
    display('El conjunto es ortogonal')
else
    display('El conjunto no es ortogonal');
end

end

