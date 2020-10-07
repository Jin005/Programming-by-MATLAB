
%use_ode45.m

% solve u' =u, u(0) = 2 for 100 time steps until t =4

u0 = 2; % initial condition
time_points = linspace(0, 4, 101);
[t, u] = ode45(@exp_dudt, time_points, u0);
plot(t, u);
xlabel('t'); ylabel('u');
function dudt = exp_dudt(t, u)
    dudt=u
end
