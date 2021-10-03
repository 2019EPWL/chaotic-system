% Chua吸引子三维相空间图，这里用四阶 Runge-Kutta 法得到微方程的离散序列
% 时间步长 h = 0.001, 而不是1
% 参见<<混沌时间序列分析及其应用>>吕金虎，陆君安，陈士华编著 P18

% 方程表达式
% dx/dt = a*(y-x)
% dy/dt = (c-a)*x - x*z + c*y
% dz/dt = x*y - b*z

clc
clear
close all

a = 35;
b = 3;
c = 28;

%Equations from "Chua's Circuit: A paradigm for CHAOS", pp. 25-55
%
% a=9;    b=14+2/7; %double scroll
% 
% a=8.8;  b=16;     %period 1 --- not!
% a=8.86; b=16;     %period 2 --- true
% a=9.12; b=16;     %period 4 --- probably not
% a=9.4;  b=16;     %chaos --- true


y = [-1,0,1];          % 起始点 (1 x 3 的行向量)
h = 0.01;              % 积分时间步长

k1 = 50000;            % 前面的过渡点数
k2 = 5000;             % 后面的迭代点数

z = ChuaData(y,h,k1+k2,a,b,c);     % 用四阶 Runge-Kutta 法产生 k1+k2 个点
z = z(k1+1:end,:);                  % 去掉前面 k1 个过渡点

X = z(:,1);
Y = z(:,2);
Z = z(:,3);

figure(1)
plot3(Z,Y,X);
xlabel('z');ylabel('y');zlabel('x');
title('Chen’s attractor');

