Ta = 0.001;
t = 0:Ta:5-Ta;
z = 2*sin(pi*t) + cos(2*pi*t);

figure;
plot(t,z);

PE = 0.026;

delta = sqrt(12*PE);

nBits = log2((max(z)-min(z))/delta)