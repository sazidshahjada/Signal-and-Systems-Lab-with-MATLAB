% Define continuous-time signals (as functions)
t_continuous = linspace(0, 2, 1000);  % Time vector for continuous signals
x_continuous = exp(-t_continuous);    % Example signal 1 (exponential decay)
h_continuous = ones(size(t_continuous)); % Example signal 2 (unit pulse)

% Discretize the signals (sample at discrete time intervals)
sampling_rate = 50;  % Choose an appropriate sampling rate
t_discrete = 0:1/sampling_rate:2;  % Discrete time vector

x_discrete = exp(-t_discrete);  % Sampled signal 1
h_discrete = ones(size(t_discrete)); % Sampled signal 2

% Perform convolution on the discretized signals
y_discrete = conv(x_discrete, h_discrete, 'same');  % 'same' option for the same size output

% Plot the original continuous-time signals and the convolution result
subplot(3, 1, 1);
plot(t_continuous, x_continuous, 'b', 'LineWidth', 2);
title('Continuous Signal x(t)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3, 1, 2);
plot(t_continuous, h_continuous, 'r', 'LineWidth', 2);
title('Continuous Signal h(t)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3, 1, 3);
plot(t_discrete, y_discrete, 'g', 'LineWidth', 2);
title('Convolution Result y(t)');
xlabel('Time (s)');
ylabel('Amplitude');

sgtitle('Convolution of Continuous-Time Signals');

