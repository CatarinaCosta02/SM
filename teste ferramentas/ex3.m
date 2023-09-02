N= 100;
Ta = 1/12;
Fa = 12; % mudar a frequencia 

[x,t] = GeraSinal(N,Ta);

[x,f] = Espetro(x,Ta);

figure(2);
stem(f,abs(x),".");
axis([-25 25 0 0.6]);
