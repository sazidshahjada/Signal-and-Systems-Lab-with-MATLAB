% Time vector for the original signal
t_original = -5:0.01:5; % Time vector from -5 to 5 seconds with a step of 0.01 seconds

% Create an original signal (you can replace this with any signal you want)
original_signal = cos(2*pi*t_original); % Example signal (cosine wave)

% Time reversal
t_reversed = fliplr(t_original); % Reverse the time vector

% Reverse the original signal using the reversed time vector
reversed_signal = fliplr(original_signal);

% Plot the original signal and the reversed signal
subplot(2, 1, 1);
plot(t_original, original_signal, 'b', 'LineWidth', 2);
title('Original Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(2, 1, 2);
plot(t_reversed, reversed_signal, 'r', 'LineWidth', 2);
title('Reversed Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

sgtitle('Time Reversal of a Signal');

