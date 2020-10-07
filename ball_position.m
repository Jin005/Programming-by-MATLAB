
% ball_position.m

function ball_position_xy()
    initial_velocity_x = 2.0;
    initial_velocity_y = 5.0;
    time = 0.6; %just pick 1 point in time
    x_pos = x(initial_velocity_x, time);
    y_pos = y(initial_velocity_y, time);
    fpringf('%f %f \n', x_pos, y_pos)
    
    time = 0.9;
    x_pos = x(initial_velocity_x, time);
    y_pos = y(initial_velocity_y, time);
    fpringf('%f %f \n', x_pos, y_pos)
end


function result = y(v0y, t)
    g = 9.81 % acceleration of gravity
    result = v0y * t - 0.5 * g * t.^2;
end


function result = x(v0x, t)
    result = v0x * t;
end

% or the last two functions can be combined to a single function
% as we can use one function to return more than 1 value.


function [result1, result2] = xy(v0x, v0y, t)
    g=9.81; 
    result1 = v0x * t;
    result2 = v0y * t - 0.5 * g * t .^2;
end

