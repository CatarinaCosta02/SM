function p = Potencia(x)
%p=potencia(x)
%x sao amostras de um sinal

N = length(x); %somatorio
p = (1/N)*sum(x.^2);
end
