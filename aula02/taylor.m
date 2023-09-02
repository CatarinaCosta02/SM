%% funcao da seria de Taylor

function seno_serie = taylor(x,N)

z = zeros(1,length(x));
for n =1:N
    z = z  + (x.^n/factorial(n) * sin(n*pi/2));
end
seno_serie=z;
end