%exercicio 3

t = 0:0.01:5;
x = 2*sin(4*pi*t);
y = cos(10*pi*t);
z= x.*y;
w= 3*sin(pi*t)+2*sin(6*pi*t);

figure(1);
%traço contínuo e fino, de cor vermelha
plot(t,x,'r');
hold on
%traço grosso a tracejado, de cor azul
plot(t,y,'b--','LineWidth',2)
hold on
%traço contínuo e fino, de cor verde, com pontos em cada amostra
plot(t,z,'g-.');
hold on 
%traço contínuo e grosso, de cor amarela
plot(t,w,'y','LineWidth',2);

xlable("Time");
ylabel("Signal");