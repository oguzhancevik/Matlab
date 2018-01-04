clc;
clear all;
eye(3,3)
zeros(4,4)
ones(5,5)
A=5+zeros(5,5)

% . operatörü
B=rand(5,5)

C=A.*B
D=A^2 % A*A
E=A.^2

F=A./2

%%% Çizim Ýþlemi
x=-2*pi:0.001:2*pi;
y=sin(x)
y2=3*(x.^2)-5*x+7
figure()
subplot(2,2,1)
plot(x,y)
title('Sinx in Grafigi ')
xlabel('x degiskeni')
ylabel('Sinus karsiligi')
grid on
subplot(2,2,2)
plot(x,y2)
title('3x^2-5x+7 nin Grafigi ')
xlabel('x degiskeni')
ylabel('f karsiligi')
grid on
subplot(2,2,3)
plot(x,y2)
title('sin(x)(3x^2-5x+7) nin Grafigi ')
xlabel('x degiskeni')
ylabel('f karsiligi')
grid on
plot(x,y.*y2)
grid on
subplot(2,2,4)
plot(x,y2)
title('sin(x)./(3x^2-5x+7) nin Grafigi ')
xlabel('x degiskeni')
ylabel('f karsiligi')
grid on
plot(x,y./y2)
grid on

