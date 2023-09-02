% a) 𝑥(𝑡) = sin(2𝜋𝑡), registado durante 2 e 100 períodos.
Ta = 0.01;
fo =1;
To = 1/fo;
Np = 100;
N = round(Np*To/Ta);
t = (0:N-1)'*Ta;
x = sin(2*pi*fo*t);
figure(1);
[X,fx]=  Espetro(x,Ta);

% b) 𝑦(𝑡) = sin(10𝜋𝑡) + cos(12𝜋𝑡) + cos(14𝜋𝑡 − 𝜋/4), registado durante 50 seg.
%m.d.c da frequencia das 3 sinusoides -> 5,6,7 -> m.d.c. = 1 -> frequencia
%da função é 1 -> f(y) = 1
f1 = 5;
f2 = 6;
f3 = 7;
t5 = 0:Ta:50-Ta;
y = sin(10*pi*t5) + cos(12*pi*t5) + cos(14*pi*t5 - (pi/4));
figure(2);
[X,fx] = Espetro(y,Ta);

% c) 𝑦(𝑡) = 10 + 14cos(20𝜋𝑡 − 𝜋/3) + 8cos(40𝜋𝑡 + 𝜋/2), registado durante 100 períodos. 


yc = 10 + 14*cos(20*pi*t - (pi/3)) + 8*cos(40*pi*t + (pi/2));
