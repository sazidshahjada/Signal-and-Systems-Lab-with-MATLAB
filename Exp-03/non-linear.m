% Define a nonlinear system: y = x^2 + sin(x)

% Input
x = linspace(0, 2*pi, 100);  % Create a range of input values

% Implement the nonlinear system
y = x.^2 + sin(x);

% Plot the input and output signals
plot(x, y, 'r', 'LineWidth', 2);
xlabel('Input (x)');
ylabel('Output (y)');
title('Nonlinear System');
grid on;

