Ta = 1;
t = 0:Ta:5-Ta;
x = 0.5 + sin(1/2*pi*(t-1)) + 0.5*sin(1/2*pi*(t-2));
%x = square(2*pi*1*t);
%x = sin(2*pi*1*t);
%x = square(2*pi*1*t + pi/2);

[X,f] = Espetro(x,Ta);

figure;
subplot(1,2,1);
plot(t,x); axis([0 5 -5 5]);
subplot(1,2,2);
stem(f,abs(X)); axis([-5 5 0 max(abs(x))]);