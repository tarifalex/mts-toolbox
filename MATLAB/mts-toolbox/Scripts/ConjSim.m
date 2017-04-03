%% Probar que es conjugado simetrico
%solo funciona si la se�al es real

syms w real
X = 1 + 3*exp(-w*3i) - 4*exp(-w*2i) % Aqu� cambiamos el valor de X
A=subs(X,w,-w)
B=conj(X) % calculamos su conjugado
s=simplify(A-B) % comprobamos si es sim�trico

if s == 0
    disp('es conjugado simetrico')
else
    disp('no es conjugado simetrico')
end
