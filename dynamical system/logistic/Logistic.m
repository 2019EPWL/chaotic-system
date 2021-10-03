% ���� Logistic ���С�
% ʹ��ƽ̨ - Matlab6.5

% ���ģ�� x(n+1) = lambda * x(n) * (1 - x(n)) 
% �� lambda �� 3 �� 4 �Ĺ���ͼ��
% �μ�<<���綯��ѧ����>>��ʿ����½�������� P46

clc
clear
close all

lambda = 3:5e-2:4;
x = 0.4*ones(1,length(lambda));

N1 = 400;                   % ǰ��ĵ�������
N2 = 100;                   % ����ĵ�������

f = zeros(N1+N2,length(lambda));
for i = 1:N1+N2
    x = lambda .* x .* (1 - x);
    f(i,:) = x;
end
f = f(N1+1:end,:);

plot(lambda,f,'k.','MarkerSize',1)
xlabel('\lambda')
ylabel('x');

figure, plot(f(2,:),'r');

