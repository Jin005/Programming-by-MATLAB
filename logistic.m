
%logistic.m

f = @(u, t) 0.1 * (1-u/500)*u;
U_0 = 100;

dt=0.5; T=60;
[u,t] = ode_FE(f, U_0, dt, T); % call ode_FE
plot(t, u, 'b-');
xlabel('t'); ylabel('N(t)');
filestem = strcat('tmp_', num2str(dt));
filename = strcat(filestem, '.png'); print(filename);
filename = strcat(filestem, '.pdf');print(filename);

% look at another example
dt = 20; T=100;
[u,t] = ode_FE(f, U_0, dt, T); % call ode_FE
plot(t, u, 'b-');
xlabel('t'); ylabel('N(t)');
filestem = strcat('tmp_', num2str(dt));
filename = strcat(filestem, '.png'); print(filename);
filename = strcat(filestem, '.pdf');print(filename);

