% Chua��������ά��ռ�ͼ���������Ľ� Runge-Kutta ���õ�΢���̵���ɢ����
% ʱ�䲽�� h = 0.001, ������1
% �μ�<<����ʱ�����з�������Ӧ��>>���𻢣�½��������ʿ������ P18

% ���̱��ʽ
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


y = [-1,0,1];          % ��ʼ�� (1 x 3 ��������)
h = 0.01;              % ����ʱ�䲽��

k1 = 50000;            % ǰ��Ĺ��ɵ���
k2 = 5000;             % ����ĵ�������

z = ChuaData(y,h,k1+k2,a,b,c);     % ���Ľ� Runge-Kutta ������ k1+k2 ����
z = z(k1+1:end,:);                  % ȥ��ǰ�� k1 �����ɵ�

X = z(:,1);
Y = z(:,2);
Z = z(:,3);

figure(1)
plot3(Z,Y,X);
xlabel('z');ylabel('y');zlabel('x');
title('Chen��s attractor');

