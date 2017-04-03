function[x,n]=Pulso_Rectangular(na,nb,n1,n2)
%Secuencia finita de un pulso rectangular definida en un rango [n1, n2]

if nargin~=4
    error('Número de argumentos inválido, ejemplo de uso: pulso_rectangular(na,nb,n1,n2)');
end

if(na<n1) | (nb<n1) | (na>n2) | (nb>n2)
    error('na y nb deben estar en el rango [n1,n2]');
elseif(na>nb)
    error('na debe ser menor que nb')
end

% Definimos el pulso rectangular
n = n1:n2;
x = (n-na)>=0 & (n-nb) <=0;
end