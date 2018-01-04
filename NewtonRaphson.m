clc;clear all;
% f(x)=3*x+sin(x)-exp(x) denkleminin en küçük pozitif kökünü NewtonRaphson Yöntemi ile bulunuz.
syms x;
f=3*x+sin(x)-exp(x)
ft=diff(f,x)
% Baþlangýç x deðeri;
TD=0.00005;sayac=0;
x=0;
xy=x-eval(f)/eval(ft);
while (abs(x-xy)>TD)
    x=xy;
    xy=x-eval(f)/eval(ft);
    sayac=sayac+1;
end
sayac
kok=x
denklemsonuc=3*x+sin(x)-exp(x)
x=0:0.001:1;
y=3*x+sin(x)-exp(x);
plot(x,y);grid on;hold on;plot(kok,denklemsonuc,'x','LineWidth',2)

    
    