

%trapezoidal_app.m

function application()
    v = @(t) 3*(t.^2)*exp(t.^3);
    n = input('n:')
    numerical = trapezoidal(v, 0, 1, n);
    %compare with exact result
    v= @(t) exp(t.^3);
    exact = v(1)-v(0);
    error = exact - numerical;
    fprintf("n=%d: %0.16f, error:%g",n, numerical, error)
end



