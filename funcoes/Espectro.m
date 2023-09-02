function [X,f] = Espectro (x, Ta,w)
  N = length(x);

  if w
    x = x' .* blackman(N);%caso x seja(1 , N)
  end

  X = fft(x)/N;
  X = fftshift(X);
  
  fa = 1/Ta;
  df=fa/N;
  f=(0:(N-1))*df-fa/2;
  
end