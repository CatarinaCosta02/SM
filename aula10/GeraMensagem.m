function [NumBits,NumBPS] = GeraMensagem(f,CompMesg,nBits)
% gera uma mensagem aleatoria com o nuemro total de simbolos
% a frequencia dos simbolos na CompMesg é especificada

Mesg = randsample(1:length(f), CompMesg, true, f/sum(f));

N = length(f);
NumBits = 0;
% calcula o numero de bits que mensagem precisa para ser gerada
for n=1:N
    NumBits = NumBits + sum(Mesg == n)*nBits(n);
end
% número médio de bits por símbolo verificado na mensagem gerada
NumBPS = NumBits / CompMesg;
end