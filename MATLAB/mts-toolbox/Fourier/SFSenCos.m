function[SF,an,bn]=SFSenCos(f,N)
% Calcula los coeficientes a(n) y b(n) y la suma parcial de la serie de Fourier en senos y cosenos de una funci�n, en el intervalo [-pi, pi].

if nargin~=2
    error('N�mero de argumentos inv�lido, ejemplo de uso: SFSenCos(f,N)');
end

if(N<=0)
    error('El orden N debe ser posiivo');
end

syms x
T = 2*pi;
w0=2*pi/T;
an=[];
bn=[];

for k=0:N
    an=[an,(2/T)*int(f*cos(k*w0*x),x,-pi,pi)]; % C�lculo de los coeficientes a(n)
    bn=[bn,(2/T)*int(f*sin(k*w0*x),x,-pi,pi)]; % C�lculo de los coeficientes b(n)
end

SF=an(1)/2; % El primer termino de las sumas parciales (SF) es an(1)/2

for n=1:N
SF=SF+an(n+1)*cos(n*x)+bn(n+1)*sin(n*x); % C�lculo de las sumas parciales
end

an = eval(an);
bn = eval(bn);
SF = eval(SF);

disp('Coeficientes a(n):   ')
an
disp('Coeficientes b(n):   ')
bn
disp('Sumas parciales:  ')

end