%exercicio 2
N = 10000;
Ta = 0.001;
[x,t] = GeraSinal(N,Ta);
figure(1)
[X,f] = Espetro(x,Ta);
plot(f,abs(X))
xlim([-25 25])
ylim([0 0.5])
legend("Espetro Sinal")
grid on