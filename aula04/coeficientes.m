% 𝑇𝑎: Período de amostragem, em segundos;
% 𝑇0: Período do sinal, em segundos;
% x: Vetor (𝑁x1) com as amostras sucessivas do sinal a decompor (deverá ser passado um número inteiro de períodos deste sinal, não devendo o último período ficar truncado);
% K: Número de harmónicas a considerar na decomposição.

% o que devolve              o que recebe
function[a,b] = coeficientes(Ta, T0,x,K)

f0 = 1/T0; %frequencia do sinal
N = length(x); % numero de amostras
t = (0:Ta:(N-1)*Ta); % tempo
% vetores de zeros para a e b, onde meter os valores do sinal

a = zeros(1,K);
b = zeros(1,K);

%w0 = 2*pi*f

for k = 1:K
    cosk = cos(k*2*pi*t*f0);
    sink = sin(k*2*pi*t*f0);
    a(k) = 2*sum(x.*cosk*Ta)/(N*Ta);
    b(k) = 2*sum(x.*sink*Ta)/(N*Ta);
end



end