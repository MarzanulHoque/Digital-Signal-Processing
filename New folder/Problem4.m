clc;
clear;
N=8;
fs = 750;
ts = 1/fs;

a=zeros(1,N);
b=zeros(1,N);
X=zeros(1,N);
X_angle=zeros(1,N);


n=0:N-1;
x2 = 5*sin(2*pi*1000/fs*n+pi/2);

for m=0:N-1
    for i=0:N-1
        a(m+1) = a(m+1) + x2(i+1)*cos(2*pi*i*m/N); 
        b(m+1) = b(m+1) - x2(i+1)*sin(2*pi*i*m/N); 
    end
    X(m+1) = sqrt(a(m+1)^2 + b(m+1)^2);
    X_angle(m+1) = atan(b(m+1)/a(m+1));
end

m=0:N-1;
title('Spectrum for Problem4');
subplot(3,1,2);
stem(m,X);