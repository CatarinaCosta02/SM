%exercicio 7
[Image,ColorMap] = imread("Parede_8bit.bmp");

Im = Load8bitImage('Parede.raw');
Im = uint8(Im);    %terá a ver com a codificação em 8 bits

stream = EncodeImage_RLE(Im);
[N,M] = size(Im);

DecoImage = DecodeImage_RLE(N, M, stream);

%sem passar para uint8
%figure(2)
%colormap(ColorMap);
%image(DecoImage)

figure(3)
DecoImage=uint8(DecoImage);
colormap(ColorMap);
image(DecoImage)