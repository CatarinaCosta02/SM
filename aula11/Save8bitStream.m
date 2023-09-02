function [] = Save8bitStream(Filename,N,M,Stream)
% guarda a informação resultante da aplicação do metodo RLE

% converter no formato unit16 tem mais range de numeros

% guarda no ficheiro, o N, o M, e o stream

    fid = fopen(Filename, 'wb');    %abre o ficheiro, no modo wb
    fwrite(fid, N, 'uint16');       %escreve o N em int16
    fwrite(fid, M, 'uint16');       %escreve o M em int16
    fwrite(fid, Stream, 'uint8');   %escreve o stream em int16
    fclose(fid);                    %fecha ficheiro
end