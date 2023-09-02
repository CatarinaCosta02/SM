% teste da função de Fourier

Ta = 0.001;
f = 1;
Np = 2;
%K = 10;

%bk = [0 4/pi 0 4/(3*pi) 0 4/(5*pi) 0 4/(7*pi) 0 4/(9*pi) 0 4/(11*pi) 0 4/(14*pi)];
ind = 1:2:K-1;
bk= zeros(1,K-1);
bk(ind) = 4./(pi*ind);
bk = [0 bk];
ak = zeros(length(bk));
[x,t] = Fourier(Ta,f,Np,ak,bk);
figure(1);

t1=0:Ta:2-2*Ta;
y= square(2*pi*1*t1);
plot(t1,y,'r')
hold on
plot(t,x,'b');
grid;
legend('Square Wave', 'Serie Fourier K=30')
xlabel('Tempo (seg)');
ylabel('yy');