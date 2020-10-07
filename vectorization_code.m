

% vectorized code is faster than loops
% eg: evaluate f(x) for a lot of x values in an array

function result = f(x)
    result = exp(-x)*sin(x) + 5.*x
end

x = linspace(0, 4, 101);
y=f(x);