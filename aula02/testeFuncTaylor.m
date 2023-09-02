%% testar funcao de taylor

x = linspace(0,2*pi,100);
y = sin(x);
seno_serie2 = taylor(x,2);
seno_serie10 = taylor(x,10);
seno_serie6 = taylor(x,6);

subplot(2,1,1);
plot(x,y,'m',x,seno_serie2,'b',x,seno_serie10,'g');
legend('sin','n=2','n=10');

subplot(2,1,2);
plot(x,seno_serie6,'m');
