Ta = 0.01;
t = [0:Ta:0.33]';

x = cos(6*pi*t) + sin(8*pi*t + pi/3);
ReconstroiSinal(x,Ta);
plot(t,x);
[y,t] = ReconstroiSinal(x,Ta);
hold on;
plot(t,y);