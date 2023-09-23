% Non-causal system using future values: y[n] = x[n+1] + x[n+2]

% Define the input signal
n = 0:50;           % Time index
x = sin(0.1 * n);   % Example input signal

% Initialize the output signal
y = zeros(size(x));

% Implement the non-causal system
for i = 1:length(x)-4
    y(i) = x(i+3) + x(i+2);
end

% Plot the input and output signals
subplot(2,1,1);
stem(n, x, 'b', 'LineWidth', 2);
title('Input Signal');
xlabel('n');
ylabel('x[n]');

subplot(2,1,2);
stem(n, y, 'r', 'LineWidth', 2);
title('Output Signal (Non-causal)');
xlabel('n');
ylabel('y[n]');

