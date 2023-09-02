function [Simbolos,Frequencia] = Alfabeto2(Texto)
% adicionar à função Alfabeto1 a capacidade de devolver a frequencia com
% que cada simbolo aparece no texto
    Simbolos = unique(Texto);
    dic = length(Simbolos);

    Frequencia = zeros(1,dic);

    for k=1:dic
        % a vai ser igual à letra k que esta no dic, e vai igualar o dic ao
        % texto para verificar se a letra é o nao igual
        % ou seja a fica com o valor da letra de dic(k) == texto
        a = (Simbolos(k) == Texto);
        Frequencia(k) = sum(a);
    end
% a frequencia vai ser igual à frequencia da letra a dividir por todas as
% colunas que o vetor de zeros frequencia tem
    Frequencia = Frequencia ./ sum(Frequencia);

end
