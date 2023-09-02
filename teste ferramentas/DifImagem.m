function T = DifImagem(Q)
    pixels(:,:) = Q(1:length(Q(:,1))-1, Q(1:length(Q(1,:))-1));
    pixelsDireita(:,:) = Q(2:lenght(Q(1,:)), Q(2:length(Q(:,1))));
    %pixels = tamanho da coluna, tamanho da linha
    T = pixels - pixelsDireita;

    T = T - min(T);
    T = T./max(T);%meto entre o intervalo [0,1]
    T = T.* 2^8;

    imshow(T);
end