[Image,ColorMap] = imread("Parede_8bit.bmp");

Im = Load8bitImage('Parede.raw');
Im = uint8(Im);    %terá a ver com a codificação em 8 bits

stream = EncodeImage_RLE(Im);