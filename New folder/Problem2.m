clc;
clear;
N=8;

fs = 750;

ts = 1/fs;

n=0:N-1;

x2 = 5*sin(2*pi*1000/fs*n+pi/2);

disp(x2);
