function [] = EspetroImagem(Q)
    Q = rgb2gray(Q);
    [Nx, Ny] = size(Q);
        
    Qfreq = fftshift(fft2(Q)/(Nx*Ny));
    Qmag = abs(Qfreq);

    f1 = (-Nx/2:Nx/2-1);
    f2 = (-Ny/2:Ny/2-1);

    figure;
    imshow(Q); title("Imagem");

    figure;
    mesh(f1,f2,Qmag); title("Espetro");
    view(2);
    
    zlim([0.1 0.5]);
end