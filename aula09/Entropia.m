function H = Entropia(Texto)

% define-se pela média da quantidade de informação associada

    [Simbolos,Frequencia] = Alfabeto2(Texto);

    H = sum(f.*log2(1./f));

end