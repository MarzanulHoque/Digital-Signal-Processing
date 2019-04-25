x = [2 3 -1 4];
N = length(x);
X = zeros(4,1)
for k = 0:N-1
    for n = 0:N-1
        X(k+1) = X(k+1) + x(n+1)*exp(-j*pi/2*n*k)
    end
end

t = 0:N-1;
subplot(311)
stem(t,x);
xlabel('Time(s)');
ylabel('Amplitude');
title('Time Domain -Input sequence');

subplot(312)
stem(t,x);
xlabel('Frequency');
ylabel('|X(K)|');
title('Frequency domain - Magnitude response ');

subplot(313)
stem(t,angle(X));
xlabel('Frequency');
ylabel('Phase')
title('Frequency Domain - phase response')

X
angle(X)

