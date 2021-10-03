% Duffing ��������ά��ռ�ͼ���������Ľ� Runge-Kutta ���õ�΢���̵���ɢ����
% ʱ�䲽�� h = 0.01, ������1

% ���̱��ʽ
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

y = [-1,0,1];          % ��ʼ�� (1 x 3 ��������)
h = 0.05;              % ����ʱ�䲽��

k1 = 8000;             % ǰ��Ĺ��ɵ���
k2 = 10000;             % ǰ��ĵ�������

z = DuffingData(y,h,k1+k2,delta,a,f,omega);     % ���Ľ� Runge-Kutta ������ k1+k2 ����
z = z(k1+1:end,:);                              % ȥ��ǰ�� k1 �����ɵ�

X = z(:,1);
Y = z(:,2);
Z = z(:,3);

figure(1)
plot3(Z,Y,X,'b','LineWidth',1);
xlabel('z');ylabel('y');zlabel('x');
title('Duffing attractor');

