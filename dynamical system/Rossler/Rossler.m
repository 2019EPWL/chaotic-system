% Rossler 吸引子三维相空间图，这里用四阶 Runge-Kutta 法得到微方程的离散序列
% 时间步长 h = 0.01, 而不是1

% 方程表达式
% dx/dt = -(y+z)
% dy/dt = x + d*y
% dz/dt = e + z*(x-f)

clc
clear
close all

d = 0.2;           % Rossler 方程参数 a
e = 0.2;           %                  b            
f = 5;           %                  c

%if e=2;f=4;
%limit cycle           d=0.3
%period 2 limit cycle  d=0.35
%period 4              d=0.375
%"four band" chaos     d=0.386
%period 6              d=0.3909
%"single band" chaos   d=0.398
%period 5              d=0.4
%period 3              d=0.411
%Values from Thompson and Stewart
%abother chaos
%d=0.398;
%e=2;
%f=4;

y = [-1,0,1];      % 起始点 (1 x 3 的行向量)
h = 0.05;          % 积分时间步长

k1 = 50000;         % 前面的迭代点数
k2 = 3000;         % 后面的迭代点数

z = RosslerData(y,h,k1+k2,d,e,f);
z = z(k1+1:end,:);

X = z(:,1);
Y = z(:,2);
Z = z(:,3);

figure(1)
plot3(X,Y,Z);grid;
xlabel('x');ylabel('y');zlabel('z');
title('Rossler attractor');

