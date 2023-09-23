% Causal system difference equation: y[n] = 0.5 * x[n] + 0.2 * x[n-1]

% Define the input signal
n = 0:50;           % Time index
x = sin(0.1 * n);   % Example input signal

% Initialize the output signal
y = zeros(size(x));

% Implement the causal system
for i = 2:length(x)
    y(i) = 0.5 * x(i) + 0.2 * x(i-1);
end

% Plot the input and output signals
subplot(2,1,1);
stem(n, x, 'b', 'LineWidth', 2);
title('Input Signal');
xlabel('n');
ylabel('x[n]');

subplot(2,1,2);
stem(n, y, 'r', 'LineWidth', 2);
title('Output Signal');
xlabel('n');
ylabel('y[n]');

