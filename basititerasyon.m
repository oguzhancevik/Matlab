clc;clear all;
% f(x)=x^3-x-3 denkleminin en k���k pozitif k�k�n� Basit �terasyon Y�ntemi ile bulunuz.
% Verilen denklem 3 ayr� �ekilde x=g(x) �eklinde ifade edilebilir.
syms x;
g1=x^3-3;d1_t=diff(g1,x)
g2=(x+3)^(1/3);d2_t=diff(g2,x)
g3=3/(x^2-1);d3_t=diff(g3,x)
% Bu �� t�rev ifadesinden sadece 2. si t�m pozitif x de�erleri i�in
% yak�nsama �art�n� sa�lamaktad�r. Birincisi x>0.58 i�in yak�nsama �art�n�
% sa�lamaz, ���nc�s� de baz� x de�erleri i�in bu �art� sa�lamamktad�r.
x=1+rand; yakinsa_kr1=abs(eval(d1_t))  %
x=10*rand; yakinsa_kr2=abs(eval(d2_t))  %
x=1.2; yakinsa_kr3=abs(eval(d3_t))  %

% Ba�lang�� x de�eri;
TD=0.00005;sayac=0;
x=0;xy=eval(g2)
while (abs(x-xy)>TD)
    x=xy;
    xy=eval(g2);
    sayac=sayac+1;
end
sayac
kok=x
denklemsonuc=x^3-x-3

x=0:0.001:5;
y=x.^3-x-3;
plot(x,y);grid on;hold on;plot(kok,denklemsonuc,'x','LineWidth',2)

    
    