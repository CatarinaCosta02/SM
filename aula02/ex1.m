Ta = 0.01;

%a) 
t = 0:Ta:5;
x = 5 + 10*cos(4*pi*t - (pi/3)) + 6*sin(8*pi*t + (pi/2));
figure(1);
plot(t,x,'m');
%figure(1);

%b)

y = cos(10*pi*t);
figure(2);
plot(t,y,'m');

%c)
z= x.*y;
figure(3);
plot(t,z,'m');

%d)

t0 = 0:Ta:10;
w = 3*sin(pi*t0) + 2*sin(6*pi*t0);
figure(4);
plot(t0,w,'m');

%e)
t1 = 0:Ta:5;
t2 = 0:Ta:5;
q = zeros(length(t1), length(t2));
for k=1:length(t1)
    
     q(k,:)= 2 * sin(2* pi*(2*t1(k)+t2));
    
end
figure(5);
mesh(t1,t2,q); % grafico de 3 dimensoes

