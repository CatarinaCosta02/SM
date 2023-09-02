function[x,t] = Reconstroi(X,f) 
% entra o X e o f -> sai o x e o t
% funcao abaixo seria mais ou menos a função Espetro
%N = length(x);
%fa = 1/Ta;
%Ta = 1/fa;
%f = [0:(N-1)]'*(1/(Ta*N)) - 1/(Ta*2);
%x = ifftshift(ifft(X))/N;
%t = (0:N-1)*Ta;

fa = max(f)*2;
Ta = 1/fa;
N = length(X);
x = ifftshift(ifft(X))/N;
t = (0:(N-1))'*Ta;
plot(t,x);

end