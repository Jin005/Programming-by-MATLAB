% ball_max_height.m

g = 9.81;
v0 = 5;
t = linspace(0, 1, 1000); % vecteorization; it's an array of 1000 time points
y = v0 * t - 0.5 * g * t.^2; % at this point, the array y with all the heights is ready

% Next we need to find out the largest value within y.
largest_height = y(1); % preliminary value which can initiate the comparison later

for i = 2:1000
    if y(i) > largest_height
        largest_height = y(i);
    end
end

fprintf('The largest height achieved was %f m \n', largest_height);

% we can also plot the path
plot(t, y);
xlabel('Time (s)');
ylabel('Height (m)');
