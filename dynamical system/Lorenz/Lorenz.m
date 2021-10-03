% Lorenz 吸引子三维相空间图，这里用四阶 Runge-Kutta 法得到微方程的离散序列
% 时间步长 h = 0.01, 而不是1
% 方程表达式
% dx/dt = sigma*(y-x)
% dy/dt = r*x - y - x*z
% dz/dt = -b*z + x*y

clc
clear
close all

sigma = 16;           % Lorenz 方程参数 a
r = 45.92;            %                 c            
b = 4;                %                 b

%we can use these parameters too
%sigma = 10;
%r = 28;
%b = 8/3;

y = [-1,0,1];        % 起始点 (1 x 3 的行向量)
h = 0.01;            % 积分时间步长

k1 = 8000;           % 前面的过渡点数
k2 = 10000;           % 后面的迭代点数

z = LorenzData(y,h,k1+k2,sigma,r,b);        % 用四阶 Runge-Kutta 法产生 k1+k2 个点
z = z(k1+1:end,:);                          % 去掉前面 k1 个过渡点

X = z(:,1);
Y = z(:,2);
Z = z(:,3);

% 三维相图

figure(1)
plot3(Z,Y,X,'b');
xlabel('z');ylabel('y');zlabel('x');
title('Lorenz attractor');


