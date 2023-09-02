function [x,t] = GeraSinal(N,Ta)
    t = (0:N-1)'*Ta;

    dummy1 = pi * randn(N,1);
    dummy2= pi * randn(N,1);

    phi1 = zeros(N,1);
    phi2= zeros(N,1);
    
    for k=2:N
        phi1(k) = phi1(k-1) + (dummy1(k) + dummy1(k-1))*(Ta/2);
        phi2(k) = phi2(k-1) + (dummy2(k) + dummy2(k-1))*(Ta/2);
    end
 

    x = sin(6*pi*t + pi/5) + cos(18*pi*t - pi/3);

    figure(1);
    plot(t,x);

end