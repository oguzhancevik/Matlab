clc;clear all; % denklem1=8*x1+2*x2+3*x3=30 % denklem2=x1-9*x2+2*x3=1; % denklem3=2*x1+3*x2+6*x3=31; % Tahmini başlang?ç ve hata de?erleri
x1=0;x2=0;x3=0;
hata_x1=1;hata_x2=1;hata_x3=1;
%Tolerans de?eri
TD=0.01;
sayac=0;
while( hata_x1>TD || hata_x2>TD || hata_x3>TD)
    x1y=(30-(2*x2+3*x3))/8;hata_x1=abs(x1y-x1);x1=x1y;
    x2y=(1-(x1+2*x3))/(-9);hata_x2=abs(x2y-x2);x2=x2y;
    x3y=(31-(2*x1+3*x2))/6; hata_x3=abs(x3y-x3);x3=x3y; 
    sayac=sayac+1;
end
x1
x2
x3
sayac