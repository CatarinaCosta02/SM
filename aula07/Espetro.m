function[X,f] = Espetro(x,Ta)
% N é o numero de amostras
% 𝐗 – vetor da mesma dimensão de 𝐱, com os coeficientes da DFT de 𝑥(𝑡)
% 𝑓 – vetor da mesma dimensão de 𝐱, com as frequências (em Hz) de cada
% componente de X
% fa/N -> df
% para meter nos intervalos -fa/2 ate fa/2, acrescenta-se fa/2
N = length(x);
%fa = 1/Ta;
X = fftshift(fft(x))/N;
f = [0:(N-1)]'*(1/(Ta*N)) - 1/(Ta*2);
plot(f,abs(X));

end