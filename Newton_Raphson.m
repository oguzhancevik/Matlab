clc;clear all;
syms x
f=3*x+sin(x)-exp(x);turev_f=diff(f,'x');
x0=0;
x=x0;
x1=x0-(eval(f))/(eval(turev_f));
TD=0.00001;
sayac=0;
while(abs(x0-x1)>TD)
    sayac=sayac+1;
    x0=x1;
    x=x1;
    x1=x0-(eval(f))/(eval(turev_f));
end
gercek_kok=eval(solve(f));
fprintf('Bulunan Kök Degeri %6.2f \n Gerçek Kök Degeri %6.2f  \n  ',x1, gercek_kok);
x=-1:0.00001:1;
plot(x,eval(f));grid on;hold on;
x=x1;
plot(x1,eval(f),'x','color','black');hold on
x=gercek_kok
plot(x,eval(f),'+','color','red');hold on
sayac
