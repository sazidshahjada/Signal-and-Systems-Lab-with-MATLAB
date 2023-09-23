% Time vector
t = -5:0.01:5; % Time vector from -5 to 5 seconds with a step of 0.01 seconds

% Create a signal (you can replace this with any signal you want)
signal = cos(2*pi*t); % Example signal (cosine wave)

% Even signal: f(t) = [f(t) + f(-t)] / 2
even_signal = (signal + fliplr(signal)) / 2;

% Odd signal: f(t) = [f(t) - f(-t)] / 2
odd_signal = (signal - fliplr(signal)) / 2;

% Plot the original signal, even signal, and odd signal
subplot(3, 1, 1);
plot(t, signal, 'b', 'LineWidth', 2);
title('Original Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3, 1, 2);
plot(t, even_signal, 'r', 'LineWidth', 2);
title('Even Part of the Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3, 1, 3);
plot(t, odd_signal, 'g', 'LineWidth', 2);
title('Odd Part of the Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

sgtitle('Even and Odd Parts of a Signal');

