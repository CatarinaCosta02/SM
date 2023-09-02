function y = Eco(x,Ta,w,d)
    t= 1:length(x);
    t = t./Ta;
    M = length(w);
    for i= 1:M
        y = y + w(i)*x(t-d(i));
    end
    
end