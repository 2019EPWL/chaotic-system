%Mackey-Glass�����������Mackey��Glass�����. ����һ����ά�Ķ���ѧ����,
%�������ڷ�����ʱ������Ԥ�����⣬��Ϊ���Ԥ��ģ��Ԥ�����ܵı�׼, ����ʽΪ
%dx/dt=-b*x(t)+a*x(t-TAU)/(1+x^10*(t-TAU));
%a=0.2,b=0.1,TAU=17 or 30 
% Create "mild" Mackey-Glass sequence

TAU = 17;
MGS17 = tanh(createmgdde23(10000, TAU, 1000)-1);
% Create "wild" Mackey-Glass sequence
TAU = 30;
MGS30 = tanh(createmgdde23(10000, TAU, 1000)-1);

figure;
plot(MGS17(1:1000), 'r','LineWidth',1); hold on;
plot(MGS30(1:1000), 'b','LineWidth',1);
xlabel('t');ylabel('MGS');
title('Mackey-Glass equation tau=17 and 30');
legend('MGS17','MGS30');
