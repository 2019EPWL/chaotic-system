% 2-D Logistic 混沌时间序列模型为：
% x(t+1)=4*a1*x(t)(1-x(t))+r*x(t)*y(t);
% y(t+1)=4*a2*y(t)(1-y(t))+r*x(t)*y(t).

clc
clear
close all

a1=0.7;
a2=0.7;
r = 0.64;

x0 =1;
y0 =0.5;

N1 = 1000;                   % 前面的迭代点数
N2 = 10000;                   % 后面的迭代点数

z = zeros(N1+N2,2);
for i = 1:N1+N2
    x = 4*a1*x0*(1-x0)+r*x0*y0;
    y = 4*a2*y0*(1-y0)+r*x0*y0;
    x0 = x;
    y0 = y;
    
    z(i,1) = x;
    z(i,2) = y;
end
z = z(N1+1:end,:);

X = z(:,1);


plot(X(1:500),'r')
xlabel('t');ylabel('x(t)')
title('2-D Logistic')