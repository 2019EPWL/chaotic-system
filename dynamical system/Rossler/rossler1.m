%function [x,y,z]=rossler1(n,a,b,c,x0,y0,z0,h)
%_________________________________________________
%
% Simulation of the Lorentz ODE.
%    dx/dt=-y-z
%    dy/dt=x+ay
%    dz/dt=b+z(x-c)
%
% x, y, and z are the simulated time series.
% n is the number of the simulated points.
% a, b, and c are the parameters
% x0 is the initial value for x.
% y0 is the initial value for y.
% z0 is the initial value for z.
% h is the step size.
%
%
% Notes:
% The time is n*h.
% The integration is obtained by the Euler's method.
%
%
% Reference:
%
% Rossler O E (1976): An equation for continuous chaos. Physics Letters A 57:
% 397-398
close all
clc;
clear;

n=2000;
a=0.2;
b=0.4;
c=5.7;
x0=0.1;
y0=0.1;
z0=0.1;
h=0.1;

% Initialize
y(1,:)=[x0 y0 z0];

% Simulate
for i=2:n
    ydot(1)=-y(i-1,2)-y(i-1,3);
    ydot(2)=y(i-1,1)+a*y(i-1,2);
    ydot(3)=b+y(i-1,3)*(y(i-1,1)-c);
    y(i,:)=y(i-1,:)+h*ydot;
end

% Separate the solutions
x=y(:,1);
y=y(:,2);
z=y(:,3);


figure(1)
plot3(x,y,z);grid;
xlabel('x');ylabel('y');zlabel('z');
title('Rossler attractor');

