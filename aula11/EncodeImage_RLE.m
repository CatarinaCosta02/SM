function Stream = EncodeImage_RLE(Image)

% compressão da imagem sem perdas
    [N,M] = size(Image); %N linhas, M colunas
    color = uint8(0);
    k = 1;
    Stream(k,1) = Image(1,1);

    for n=1:N %percorre matriz da imagem
        for m=1:M 
            if Image(n,m) == Stream(k,1)
                color = color + 1;
            else
                k = k + 1;
                Stream(k,1) = color;
                k = k+1;
                Stream(k,1) = Image(n,m);
                color = 1;
            end
        end
    end
    k = k+1;
    Stream(k,1) = color;

end