% CML map 混沌时间序列模型为：
% x(t+1)=1-a(x^2(t)+y^2(t)); y(t+1)=-2a(1-2*epsilon))x(t)y(t).

clc
clear
close all

a = 1.95;
epsilon = 0.01;

x0 =0;
y0 =0;

N1 = 1000;                   % 前面的迭代点数
N2 = 10000;                   % 后面的迭代点数

z = zeros(N1+N2,2);
for i = 1:N1+N2
    x = 1 - a * (x0^2 + y0^2) ;
    y = -2*a*(1-2*epsilon) * x0*y0;
    x0 = x;
    y0 = y;
    
    z(i,1) = x;
    z(i,2) = y;
end
z = z(N1+1:end,:);

X = z(:,1);
T=1:1:N2;

plot(X(1:500),'r')
xlabel('t');ylabel('x(t)')
title('CML map')