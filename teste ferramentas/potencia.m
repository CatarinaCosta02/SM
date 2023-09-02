%% Função para calcular a potência (média) de um sinal periódico
% x - Vetor com as amostras do sinal
function pw = potencia(x)
    pw = (1/length(x)) * sum(x.^2);
end