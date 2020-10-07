

v = @(t) 3 * (t.^2) * exp(t.^3);
n = 4;
numerical = trapezoidal (v, 0, 1, n);
numerical

% compute the exat expression and the error in the approximation
v = @(t) exp(t.^3);
exact = v(1)-v(0);
error = exact - numerical


% Is this error convincing? We can try a larger n:

numerical = trapezoidal(v, 0, 1, 400);
error = exact - numerical
