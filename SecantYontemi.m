clc;clear all;close all;
% Newton Raphson y�nteminin t�rev ifadesinden kurtar�lm�� �eklidir.
% f(x)=x^2+x-9 denkleminin en k���k pozitif k�k�n� Secant Y�ntemi ile bulunuz.
% Ba�lang�� x de�eri;
syms x;
f=x^2+x-9;
x0=0;
x1=1;
TD=0.000005;sayac=0;
x=secantfonksiyon (f , x0 , x1 );
hata=abs(x-x1);
while (abs(hata)>TD)
    x0=x1;
    x1=x;
    x=secantfonksiyon (f , x0 , x1 );
    hata=abs(x-x1);
    sayac=sayac+1;
end
sayac
kok=x
denklemsonuc=x^2+x-9
x=0:0.001:5;
y=x.^2+x-9;
plot(x,y);grid on;hold on;plot(kok,denklemsonuc,'x','LineWidth',2)

    