function[y]= MiFCC (x1,x2)
% Calcula la convolución circular de dos vectores de la misma longitud usando la Transformada Rápida de Fourier

if nargin~=2
    error('Número de argumentos inválido, ejemplo de uso: MyConvCirc(x1,x2)');
end

if length(x1) ~= length(x2)
    error('los vectores deben ser de la misma longitud');
end

% Utilizamos la FFT para calcular la convolución circular
X1=fft(x1);
X2=fft(x2);
X=X1.*X2;
y=ifft(X); % Hacemos la FFT inversa para revertir la transformación tras el calculo
end
