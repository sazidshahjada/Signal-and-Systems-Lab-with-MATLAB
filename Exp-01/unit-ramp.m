% Continuous-time unit ramp signal
t_continuous = -10:0.01:10; % Time vector
x_continuous = t_continuous .* (t_continuous >= 0);

% Discrete-time unit ramp signal
n_discrete = -10:10; % Discrete time indices
x_discrete = n_discrete .* (n_discrete >= 0);

% Plot the continuous-time unit ramp signal
subplot(2, 1, 1);
plot(t_continuous, x_continuous, 'b', 'LineWidth', 2);
title('Continuous-Time Unit Ramp Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Plot the discrete-time unit ramp signal
subplot(2, 1, 2);
stem(n_discrete, x_discrete, 'r', 'filled', 'LineWidth', 2);
title('Discrete-Time Unit Ramp Signal');
xlabel('Sample Index');
ylabel('Amplitude');
grid on;

% Adjust subplot spacing
sgtitle('Continuous and Discrete Unit Ramp Signals');

