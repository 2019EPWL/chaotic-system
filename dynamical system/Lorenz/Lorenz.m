% Lorenz ��������ά��ռ�ͼ���������Ľ� Runge-Kutta ���õ�΢���̵���ɢ����
% ʱ�䲽�� h = 0.01, ������1
% ���̱��ʽ
% dx/dt = sigma*(y-x)
% dy/dt = r*x - y - x*z
% dz/dt = -b*z + x*y

clc
clear
close all

sigma = 16;           % Lorenz ���̲��� a
r = 45.92;            %                 c            
b = 4;                %                 b

%we can use these parameters too
%sigma = 10;
%r = 28;
%b = 8/3;

y = [-1,0,1];        % ��ʼ�� (1 x 3 ��������)
h = 0.01;            % ����ʱ�䲽��

k1 = 8000;           % ǰ��Ĺ��ɵ���
k2 = 10000;           % ����ĵ�������

z = LorenzData(y,h,k1+k2,sigma,r,b);        % ���Ľ� Runge-Kutta ������ k1+k2 ����
z = z(k1+1:end,:);                          % ȥ��ǰ�� k1 �����ɵ�

X = z(:,1);
Y = z(:,2);
Z = z(:,3);

% ��ά��ͼ

figure(1)
plot3(Z,Y,X,'b');
xlabel('z');ylabel('y');zlabel('x');
title('Lorenz attractor');


