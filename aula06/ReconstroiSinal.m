function [y,t] = ReconstroiSinal(x,Ta)
    N = length(x);
    y = zeros(1,100*N); %SInal reconstruido
  
    fa = 1/Ta;
    fy = 100 * fa;  %Frequencia de amostragem de Y
  
    Ty = 1/fy;
  
    t = [0:(length(y)-1)]*Ty;  %Vetor de instantes de tempo na nova discretizacao
  
    for n=1 : N
        y = y + x(n)*sinc(fa*(t-(n-1)*Ta));
    end
end

