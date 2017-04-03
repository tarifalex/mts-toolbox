function[Cn,SF]=SFPeriodo(f,N,T)
% Calcula los coeficientes c(n) y la suma parcial [-T/2, T/2] de la serie de Fourier en exponenciales complejas de una función T-periódica

if nargin~=3
    error('Número de argumentos inválido, ejemplo de uso: SFPeriodo(f,N,T)');
end

if(N<=0)
    error('El orden N debe ser positivo');
end

if(T<=0)
    error('El periodo T debe ser posiivo');
end

syms x     
Cn=[]; 

for k=-N:N 
  Cn=[Cn,int(f*exp(-j*2*pi*k*x/T),-T/2,T/2)/T]; % Calculando coeficientes 
end  

SF=Cn(N+1); % El primer termino de las sumas parciales (SF) es c0=Coef(N+1) 

for n=1:N 
  SF=SF+Cn(N+1-n)*exp(-j*2*pi*n*x/T)+Cn(N+1+n)*exp(j*2*pi*n*x/T); % Añadimos los términos -n y n 
end

disp('Sumas parciales:  ')
SF
disp('Coeficientes C(n):   ')

end
