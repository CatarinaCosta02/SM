%% fazer a função de Fourier
% Ta é o periodo de amostragem
% F é a frequencia do sinal composto
% Np numero de periodos de amostragem
% Vetor (𝐾x1) com os valores de 𝑎𝑘 da série
% Vetor (𝐾x1) com os valores de 𝑏𝑘 da série

function [x,t] = Fourier(Ta, f, Np, ak, bk)

% numero de amostras

N = round(Np/(f*Ta));
x = zeros(1,N); %vetor de zeros 1 linha varias colunas
t = (0:N-1).*Ta; % => t = 0: ta:NTa -Ta

    for k = 1: length(ak)
        x = x  + ak(k) * cos(2*pi*(k-1)*f*t) + bk(k) * sin(2*pi*(k-1)*f*t);
    end

end