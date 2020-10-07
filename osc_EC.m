
% osc_EC.m

u = zeros(N_t+1, 1);
v = zeros(N_t+1, 1);

% initial condition
u(1) = 2;
v(1) = 0;

% step equations forward in time
for n = 1:N_t
    v(n+1) = v(n) - dt*omega^2*u(n);
    u(n+1) = u(n) + dt*v(n+1);
end


