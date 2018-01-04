clc;
clear all;
x=-3*pi:0.003:3*pi;
[sat sut]=size(x);
y=rand(sat,sut);
z=sin(x).*y+(y.^2)
figure()
plot3(x,y,z,'.')
grid on
xlabel('x')
ylabel('y')
zlabel('z')