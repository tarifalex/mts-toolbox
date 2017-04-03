function[y]= MiFCC (x1,x2)
% Calcula la convoluci�n circular de dos vectores de la misma longitud usando la Transformada R�pida de Fourier

if nargin~=2
    error('N�mero de argumentos inv�lido, ejemplo de uso: MyConvCirc(x1,x2)');
end

if length(x1) ~= length(x2)
    error('los vectores deben ser de la misma longitud');
end

% Utilizamos la FFT para calcular la convoluci�n circular
X1=fft(x1);
X2=fft(x2);
X=X1.*X2;
y=ifft(X); % Hacemos la FFT inversa para revertir la transformaci�n tras el calculo
end
