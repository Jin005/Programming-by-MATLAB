

% integration_methods_vec.m
% eg: evaluate f(x) for a lot of x values in an array, vectorized code is
% faster than loops

function result_integration = midpoint_vec(f,a,b,n)
    h = (b-a)/n;
    x = linspace(a+h/2, b-h/2,n);
    result_integration = h*sum(f(x));
end

v = @(t) 3.*t.^2.*exp(t,^3);
midpoint_vec(v,0,1,10)
