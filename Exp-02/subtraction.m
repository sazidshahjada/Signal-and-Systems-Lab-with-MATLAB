% Time vector
t = 0:0.01:5; % Time vector from 0 to 5 seconds with a step of 0.01 seconds

% Signal 1: A sinusoidal signal
A1 = 1; % Amplitude
f1 = 2; % Frequency in Hz
signal1 = A1 * sin(2*pi*f1*t);

% Signal 2: A square wave signal
A2 = 0.5; % Amplitude
f2 = 1; % Frequency in Hz
signal2 = A2 * cos(2*pi*f2*t);

% Add the two signals together
result_signal = signal1 - signal2;

% Plot the original signals and the result
subplot(3, 1, 1);
plot(t, signal1, 'b', 'LineWidth', 2);
title('Signal 1: Sinusoidal Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3, 1, 2);
plot(t, signal2, 'r', 'LineWidth', 2);
title('Signal 2: Square Wave Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3, 1, 3);
plot(t, result_signal, 'g', 'LineWidth', 2);
title('Resultant Signal (Signal 1 + Signal 2)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

sgtitle('Addition of Two Signals');

