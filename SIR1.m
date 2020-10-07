% SIR1.m
% programming the numerical method: the special case
% time unit: 1h
beta = 10/(40*8*24); % beta = N/t*S0*I0, in 24h, 40 susceptibles turned to 30 susceptibles; 8 infected turned to 18 infected.
gamma = 3/(15*24); % gamma = l/mt, l out of m recovered during time t., here
% 1 day 3, recovered from 15 Infected.
dt=0.1; % 0.1 of 1h-> 6 min
D=30; % simulate for D days
N_t = floor(D*24/dt); % corresponding number of time steps.

t= linspace(0, N_t*dt, N_t+1);
S= zeros(N_t+1, 1);
I = zeros(N_t+1, 1);
R = zeros(N_t+1, 1);

% the initial condition
S(1) = 50;
I(1) =1;
R(1) = 0;

% step equations forward in time
for n = 1:N_t
    S(n+1) = S(n) - dt*beta*S(n)*I(n);
    I(n+1) = I(n) + dt*beta*S(n)*I(n)-dt*gamma*I(n);
    R(n+1) = R(n) + dt*gamma*I(n);
end

plot(t, S, t, I, t, R);
legend('S', 'I', 'R','Location', 'northwest');
xlabel('hours');
print('tmp','-dpdf'); print('tmp', '-dpng');
