
% whileloop.m
% In order to find the time of flight for the ball.
% Assume the ball is thrown with a slightly lower initial velocity-4.5 m/s,
% while everhting else is kept unchanged.
% find the time when heights start to get negative, i.e. when the ball
% cross y = 0.

g = 9.81;
v0 = 4.5;
t = linspace(0, 1, 1000);
y = v0 * t - 0.5 * g * t.^2; % generate all heights

i = 1;
while y(i) >= 0
    i = i + 1;
end

fprintf('The time (switch from positive to negative): %f\n', t(i));
plot(t, y);
xlabel('Time (s)');
ylabel('Height (m)');
