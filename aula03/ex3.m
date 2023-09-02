t=0:0.01:5-0.01;

x=2*sin(4*pi*t);
plot(t,x);

y=sin(10*pi*t + pi/2);
subplot(5,1,2);
plot(t,y);

z= sin(10*pi*t) + cos(10*pi*t + pi/2);
subplot(5,1,3);
plot(t,z);

w=sin(6*pi*t) + sin(8*pi*t + 0.1);
subplot(5,1,4);
plot(t,w);

q=sin(3*pi*t) + sin(7*pi*t) + sin(8*pi*t);
max(q)
subplot(5,1,5);
plot(t,q);


px = potencia(x)
py = potencia(y)
pz = potencia(z)
pw = potencia(w)
pq = potencia(q)
