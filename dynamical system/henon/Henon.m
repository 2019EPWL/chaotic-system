% 产生 Henon 序列　
% Henon映射 x(n+1) = 1 - a * x(n)^2 + y(n);  y(n+1) = b * x(n)
clc
clear
close all

a = 1.4;
b = 0.3;

x0 = 0;
y0 = 0;

N1 = 2000;                   % 前面的迭代点数
N2 = 8000;                   % 后面的迭代点数

z = zeros(N1+N2,2);
for i = 1:N1+N2
    x = 1 - a * x0^2 + y0 ;
    y = b * x0;
    x0 = x;
    y0 = y;
    
    z(i,1) = x;
    z(i,2) = y;
end
z = z(N1+1:end,:);

X = z(:,1);
Y = z(:,2);

plot(X,Y,'.','MarkerSize',1)
xlabel('z');ylabel('y')
title('Henon attractor')

