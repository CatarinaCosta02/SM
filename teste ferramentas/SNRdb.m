Ta = 0.001;
t = 0:Ta:5-Ta;
x = sawtooth(2*pi*t);
r = 0.1*randn(1,length(t));

Px = potencia(x)
Pe = potencia(r)

SNRdb = 10*log10(Px/Pe)