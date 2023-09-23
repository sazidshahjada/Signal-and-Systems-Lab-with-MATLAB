% Continuous-time sinusoidal signal
t_continuous = linspace(0, 2*pi, 1000); % Time vector from 0 to 2*pi
f_continuous = 1; % Frequency in Hz
A_continuous = 2; % Amplitude

% Generate the continuous-time sinusoidal signal
x_continuous = A_continuous * sin(2*pi*f_continuous*t_continuous);

% Discrete-time sinusoidal signal
n_discrete = 0:49; % Discrete time indices
f_discrete = 0.1; % Sampling frequency in Hz
A_discrete = 2; % Amplitude

% Generate the discrete-time sinusoidal signal
x_discrete = A_discrete * sin(2*pi*f_discrete*n_discrete);

% Plot the continuous-time signal
subplot(2, 1, 1);
plot(t_continuous, x_continuous);
title('Continuous-Time Sinusoidal Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot the discrete-time signal
subplot(2, 1, 2);
stem(n_discrete, x_discrete);
title('Discrete-Time Sinusoidal Signal');
xlabel('Sample Index');
ylabel('Amplitude');

% Adjust subplot spacing
sgtitle('Continuous and Discrete Sinusoidal Signals');

