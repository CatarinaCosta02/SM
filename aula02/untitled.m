Ta = 0.01;

%a) 
t = 0:Ta:5;
x = 5 + 10*cos(4*pi*t - (pi/3)) + 6*sin(8*pi*t + (pi/2));
figure(1);
plot(t,x,'m');
%figure(1);