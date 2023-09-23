% Define a linear system: y = 2*x + 3

% Input
x = linspace(0, 10, 100);  % Create a range of input values

% Implement the linear system
y = 2 * x + 3;

% Plot the input and output signals
plot(x, y, 'b', 'LineWidth', 2);
xlabel('Input (x)');
ylabel('Output (y)');
title('Linear System');
grid on;

