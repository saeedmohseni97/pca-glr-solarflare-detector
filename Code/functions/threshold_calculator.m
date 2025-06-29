function threshold = threshold_calculator(ET,M,w)
alpha = 10; beta = 100; ci=0; temp=1;
f = @(u) u.*((2./u) .* ((normcdf(u/2) - .5)./((u/2).*normcdf(u/2) + (1/sqrt(2*pi))*exp(-u.^2/2)))).^2;
 H = @(b) -ET+((2*sqrt(pi))/(integral(f,sqrt(2*b/w) * (1-M/(2*b)),sqrt(2*b) * (1-M/(2*b)))))...
        * (1/(1-(M/(2*b)))) * (1/sqrt(M)) * (M/(2*b))^(M/2) *exp(b-(M/2)) *(1+.9784/3);
while (abs(temp - ci)>.001)
    temp = ci;
    f_alpha = H(alpha);
    f_beta = H(beta);
    ci = (alpha+beta)/2; 
    f_ci = H(ci);
    if(f_alpha*f_ci<0)
        beta = ci;
    end
    if(f_beta*f_ci<0)
        alpha=ci;
    end
end
threshold = ci;
end