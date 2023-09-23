% Time vector for the original signal
t_original = -5:0.01:5; % Time vector from -5 to 5 seconds with a step of 0.01 seconds

% Create an original signal (you can replace this with any signal you want)
original_signal = cos(2*pi*t_original); % Example signal (cosine wave)

% Scaling factor
a = 2; % Scale the time by a factor of 2 (time compression)

% Time vector for the scaled signal
t_scaled = t_original / a;

% Interpolate the scaled signal
scaled_signal = interp1(t_original, original_signal, t_scaled, 'linear', 0);

% Plot the original signal and the scaled signal
subplot(2, 1, 1);
plot(t_original, original_signal, 'b', 'LineWidth', 2);
title('Original Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(2, 1, 2);
plot(t_scaled, scaled_signal, 'r', 'LineWidth', 2);
title('Scaled Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

sgtitle('Time Scaling of a Signal');

