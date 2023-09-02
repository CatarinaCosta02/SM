% juntar a frequencia com o numero de Simbolos
%construir  a arvore binaria

%Numero de simbolos com 4 bits => 2**4 = 16
% A mensagem tem 304 caracteres
% Simbolos -- 4bits
% Mnesagem = 304*4


load Mensagem.mat;
whos("Mensagem");

dic = Alfabeto1(Mensagem);
dic_len=length(dic);

% n dde bits necessarios para representar o texto
bps = ceil(log2(dic_len));
n_bits = length(Mensagem)*bps;