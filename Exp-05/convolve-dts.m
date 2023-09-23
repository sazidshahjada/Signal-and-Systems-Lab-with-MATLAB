% Define two discrete-time signals
n = 0:0.5:10;                  % Time indices for the signals
x = exp(-n);                % Signal 1
h = ones(size(n));          % Signal 2

% Perform convolution
y = conv(x, h);

% Create the time indices for the convolution result
ny = 0:length(y) - 1;

% Plot the original discrete-time signals
subplot(3, 1, 1);
stem(n, x, 'b', 'LineWidth', 2, 'MarkerFaceColor', 'b');
title('Discrete-Time Signal x[n]');
xlabel('n');
ylabel('Amplitude');

subplot(3, 1, 2);
stem(n, h, 'r', 'LineWidth', 2, 'MarkerFaceColor', 'r');
title('Discrete-Time Signal h[n]');
xlabel('n');
ylabel('Amplitude');

% Plot the convolution result
subplot(3, 1, 3);
stem(ny, y, 'g', 'LineWidth', 2, 'MarkerFaceColor', 'g');
title('Convolution Result y[n]');
xlabel('n');
ylabel('Amplitude');

sgtitle('Convolution of Discrete-Time Signals');

