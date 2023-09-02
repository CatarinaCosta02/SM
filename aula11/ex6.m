[Image,ColorMap] = imread("Parede_8bit.bmp");

Im = Load8bitImage('Parede.raw');
Im = uint8(Im);    %terá a ver com a codificação em 8 bits

stream = EncodeImage_RLE(Im);
[N,M] = size(Im);

Save8bitStream('Parede_5.raw',N,M,stream); 

file='Parede_5.raw';
[N, M, stream_6]=Load8bitStream(file);

% comparação de streams
if length(stream)==length(stream_6)
    fprintf("\tAs streams são iguais\n")
else
    fprintf("\tAs streams são diferentes\n")
end