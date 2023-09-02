function NumBits = NumeroBits(Texto)
% símbolo de índice 𝑘 é composto por 𝑘 bits todos iguais a 1, exceto o último que é sempre 0

% determina o numero de bist necessario para representar a mensgaem de
% texto

% Podemos fazer uso da função da frequencia -> Alfabeto2
    [Simbolos,Frequencia] = Alfabeto2(Texto);

    N = length(Texto); % 304
    M = length(Simbolos); % 9
    
    % os simbolos sao ordenados por ordem descrescente de frequencia
    Frequencia_sorted = sort(Frequencia,"descend");
    % summing the product of the frequency of each symbol, 
    % the length of the text, 
    % and the position of the symbol in the sorted list of frequencies.
    NumBits = sum(Frequencia_sorted*N.*(1:M));
end