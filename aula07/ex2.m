N= 10000;
Ta = 0.001;
Fa = 1000;

[x,f] = Espetro(x,Ta);

figure(2);
stem(f,abs(x),".");
axis([-25 25 0 0.6]) % x do -25 a 25, y de 0 a 0.6

[x, f] = Espetro(x,1/Fa);
figure;  % figura duplicada
plot(f,abs(x));

%% IR PARA A PASTA ANTIGA