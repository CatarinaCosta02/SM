% ex3 -> filtro a ser aplicado sobre o espetro
fa = 1000;
H = zeros(length(f),1);
H((f>100) & (f<400)) = 1;
H((f>-400) & (f<-100)) = 1;
xf = H.*X;
[w,t] = Reconstroi(xf,f);
w = real(w);
sound(w,fa);

plot(f,H);
xlim([-2e3 2e3]);
ylim([0 2]);

plot(f,abs(xf));
xlim([-1e3 1e3]);