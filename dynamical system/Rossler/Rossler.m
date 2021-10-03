% Rossler ��������ά��ռ�ͼ���������Ľ� Runge-Kutta ���õ�΢���̵���ɢ����
% ʱ�䲽�� h = 0.01, ������1

% ���̱��ʽ
% dx/dt = -(y+z)
% dy/dt = x + d*y
% dz/dt = e + z*(x-f)

clc
clear
close all

d = 0.2;           % Rossler ���̲��� a
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

y = [-1,0,1];      % ��ʼ�� (1 x 3 ��������)
h = 0.05;          % ����ʱ�䲽��

k1 = 50000;         % ǰ��ĵ�������
k2 = 3000;         % ����ĵ�������

z = RosslerData(y,h,k1+k2,d,e,f);
z = z(k1+1:end,:);

X = z(:,1);
Y = z(:,2);
Z = z(:,3);

figure(1)
plot3(X,Y,Z);grid;
xlabel('x');ylabel('y');zlabel('z');
title('Rossler attractor');

