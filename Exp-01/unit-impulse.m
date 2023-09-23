% Continuous-time unit impulse signal
t_continuous = -5:0.01:5; % Time vector
x_continuous = zeros(size(t_continuous));
x_continuous(t_continuous == 0) = 1;

% Discrete-time unit impulse signal
n_discrete = -10:10; % Discrete time indices
x_discrete = zeros(size(n_discrete));
x_discrete(n_discrete == 0) = 1;

% Plot the continuous-time unit impulse signal
subplot(2, 1, 1);
stem(t_continuous, x_continuous, 'b', 'filled');
title('Continuous-Time Unit Impulse Signal');
xlabel('Time');
ylabel('Amplitude');

% Plot the discrete-time unit impulse signal
subplot(2, 1, 2);
stem(n_discrete, x_discrete, 'r', 'filled');
title('Discrete-Time Unit Impulse Signal');
xlabel('Sample Index');
ylabel('Amplitude');

% Adjust subplot spacing
sgtitle('Continuous and Discrete Unit Impulse Signals');

