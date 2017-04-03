function[Cn,SF]=SFCompleja(f,N)
% Calcula los coeficientes c(n) y la suma parcial de la serie de Fourier en exponenciales complejas de una función, en el intervalo [?pi,pi] 

if nargin~=2
    error('Número de argumentos inválido, ejemplo de uso: SFCompleja(f,N)');
end

if(N<=0)
    error('El orden N debe ser posiivo');
end

syms x;     
Cn=[];

for k=-N:N 
  Cn =[Cn,int(f*exp(-j*k*x),-pi,pi)/(2*pi)]; % Calculando coeficientes 
end  

y = Cn;
SF=Cn(N+1); % El primer termino de las sumas parciales (SF) es c0=Coef(N+1) 

for n=1:N 
  SF=SF+Cn(N+1-n)*exp(j*(-n)*x)+Cn(N+1+n)*exp(j*n*x); % Añadimos los términos -n y n 
end

disp('Sumas parciales:  ')
SF
disp('Coeficientes C(n):   ')

end
