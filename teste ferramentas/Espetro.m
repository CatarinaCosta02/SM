function [x,f] = Espetro(x,Ta)
    N = length(x);
    Fa = 1/Ta;
    x = fftshift(fft(x)/N);
    if rem(N,2) == 0
        f = [-N/2:N/2-1].*(Fa/N);
    else
        f = [-(N-1)/2:(N-1)/2].*(Fa/N);

    end
end