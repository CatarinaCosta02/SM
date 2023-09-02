%ex1
[img,map] = imread('Parede_8bit.bmp');

figure(1); 
image(img);
colormap(map);

%ex2
Save8bitImage('parede.raw',img);

%ex3

Im = Load8bitImage('Parede.raw');