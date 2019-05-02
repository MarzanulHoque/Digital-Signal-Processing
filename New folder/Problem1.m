clc;
clear;

fs = 2000;

ts = 1/fs

N=8;

n=0:N-1;

x1 = 5*sin(2*pi*1000/fs*n+pi/2);

disp(x1);



