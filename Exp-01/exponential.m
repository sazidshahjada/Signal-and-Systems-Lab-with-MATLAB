% Parameters for the signals
t = 0:0.01:2*pi; % Time vector
A_real = 2; % Amplitude of the real exponential signal
A_complex = 2; % Amplitude of the complex exponential signal
f = 1; % Frequency in Hz
phi = pi/4; % Phase angle for the complex exponential signal

% Generate the real exponential signal
x_real = A_real * exp(f * t);

% Generate the complex exponential signal
x_complex = A_complex * exp(1j * (f * t + phi));

% Plot the real exponential signal
subplot(1, 2, 1);
plot(t, real(x_real)); % Extract the real part of the complex signal
title('Real Exponential Signal');
xlabel('Time');
ylabel('Amplitude');

% Plot the complex exponential signal
subplot(1, 2, 2);
plot(t, real(x_complex), 'b', t, imag(x_complex), 'r--'); % Real and imaginary parts
title('Complex Exponential Signal');
xlabel('Time');
ylabel('Amplitude');
legend('Real Part', 'Imaginary Part', 'Location', 'Best');

% Adjust subplot spacing
sgtitle('Real and Complex Exponential Signals');

