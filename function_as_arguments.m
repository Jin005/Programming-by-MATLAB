% function_as_arguments.m

function function_as_arguments() % This is the main function
    x = 2;
    y = 3;
    %create handles to the functions:
    sum_xy_handle = @sum_xy; % **_handle is the name for the handle;
    prod_xy_handle = @prod_xy; %@prod_xy is the original name of the sub function.
    % handle = @ + function name
    sum = treat_xy(sum_xy_handle, x, y); % when call a function as one parameter, we cannot use function name
    % we have to use the function handle. This type of calling is called:
    % transfer a function to another function.
    fprintf('%f \n', sum);
    prod = treat_xy(prod_xy_handle, x, y);
    fprintf('%f \n', prod);
    
end

% define function treat_xy as nested function
function result = treat_xy(f, x, y) %takes afunction as the 1st parameter
    result = f(x, y); % call the function of f which is the parameter. 
end

function result = sum_xy(x, y) % define sub function respectively.
    result = x + y;
end

function result = prod_xy(x, y) % define sub function respectively.
    result = x * y;
end

    
% Note: a nested function has full access to all variables in the parent
% function.

% Anonymous function
% eg: write a square function
my_square = @(x) x^2; % directly use @ (variable) then + the function content.

% call this function
y = my_square(2);
%note: here the my_square is a handle as well, means that it can be used as
% parameter in future. 


    
    