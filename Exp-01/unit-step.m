% Continuous-time unit step signal
t_continuous = -10:0.01:10; % Time vector
x_continuous = zeros(size(t_continuous));
x_continuous(t_continuous >= 0) = 1;

% Discrete-time unit step signal
n_discrete = -10:10; % Discrete time indices
x_discrete = zeros(size(n_discrete));
x_discrete(n_discrete >= 0) = 1;

% Plot the continuous-time unit step signal
subplot(2, 1, 1);
plot(t_continuous, x_continuous, 'b', 'LineWidth', 2);
title('Continuous-Time Unit Step Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Plot the discrete-time unit step signal
subplot(2, 1, 2);
stem(n_discrete, x_discrete, 'r', 'filled', 'LineWidth', 2);
title('Discrete-Time Unit Step Signal');
xlabel('Sample Index');
ylabel('Amplitude');
grid on;

% Adjust subplot spacing
sgtitle('Continuous and Discrete Unit Step Signals');

