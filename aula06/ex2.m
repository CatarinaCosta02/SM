% 𝑥(𝑡) = sin(2𝜋𝑡), amostrado com 𝑇𝑎 = 0.2 seg., observado durante 5 seg

Ta = 0.2;
t = 0:Ta:5-Ta;

x = sin(2*pi*t)';

ReconstroiSinal(x,Ta);
%plot(t,x,'b.');
plot(t,x);
[y,t] = ReconstroiSinal(x,Ta);
hold on;
plot(t,y);

%% b)

% �(𝑡) = sin(10𝜋𝑡) + cos(12𝜋𝑡) + cos(14𝜋𝑡 − 𝜋/4), registado durante 5 seg, com Ta = 0.04 seg.
Ta = 0.04;
t = [0:Ta:5-Ta];

y = (sin(10*pi*t)+cos(12*pi*t)+cos(14*pi*t-pi/4))';
figure(2);
%plot(t,y,'b.');hold on;
plot(t,y);hold on;
[y,t] = ReconstroiSinal(y,Ta);
plot(t,y); hold off;