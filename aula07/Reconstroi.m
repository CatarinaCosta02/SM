function [xt, t]= Reconstroi (X, f)
% x- vetor de amostras
fa=max(f)*2;
Ta=1/fa;
N=length(X);
xt=ifft(ifftshift(X))*N;
t=(0:(N-1))'*Ta;
end