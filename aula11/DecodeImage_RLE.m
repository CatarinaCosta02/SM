function Image = DecodeImage_RLE(N,M,Stream)
Image=zeros(N, M);
    n=1; 
    m=1;
    for i=1:2:length(Stream)    %a matriz tem primeiro o numero (bits da cor) e depois o numero de vezes com que aparece
        valor=Stream(i);        %valor que vai colocar lá 
        nVezes=Stream(i+1);     % número de vezes seguido que aparece ou seja que temos de acrescentar na matriz
        for N=1:nVezes
            DecomImage(n, m)=valor;
            if m==M             %chega ao final da linha, por isso tem de mudar sendo a coluna seguinte o 1
                m=1; 
                n=n+1;
            else
                m=m+1;
            end
        end
    end
end
