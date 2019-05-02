clc;
clear;

A = 0 ;
F = 0; 
N = 8 ;
fs = 2000;
ts = 1/fs
a=zeros(1,N);
b=zeros(1,N);
X1=zeros(1,N);
X1_angle=zeros(1,N);

n=0:N-1;
x = 5*sin(2*pi*1000/fs*n+pi/2);

for m=0:N-1
    for i=0:N-1
        a(m+1) = a(m+1) + x(i+1)*cos(2*pi*i*m/N);
      
        b(m+1) = b(m+1) - x(i+1)*sin(2*pi*i*m/N); 
    end
    X1(m+1) = sqrt(a(m+1)^2 + b(m+1)^2);
    X1_angle(m+1) = atan(b(m+1)/a(m+1));
end

m=0:N-1;
title('Spectrum for X1');
subplot(3,1,2);
stem(m,X1);