% Duffing 吸引子三维相空间图，这里用四阶 Runge-Kutta 法得到微方程的离散序列
% 时间步长 h = 0.01, 而不是1

% 方程表达式
% dx/dt = y
% dy/dt = -delta*y - a*x*(1+x^2) + f*cos(z)
% dz/dt = omega

clc
clear
close all

delta = 0.05;
a = 0.5;
f = 7.5;
omega = 1;

y = [-1,0,1];          % 起始点 (1 x 3 的行向量)
h = 0.05;              % 积分时间步长

k1 = 8000;             % 前面的过渡点数
k2 = 10000;             % 前面的迭代点数

z = DuffingData(y,h,k1+k2,delta,a,f,omega);     % 用四阶 Runge-Kutta 法产生 k1+k2 个点
z = z(k1+1:end,:);                              % 去掉前面 k1 个过渡点

X = z(:,1);
Y = z(:,2);
Z = z(:,3);

figure(1)
plot3(Z,Y,X,'b','LineWidth',1);
xlabel('z');ylabel('y');zlabel('x');
title('Duffing attractor');

