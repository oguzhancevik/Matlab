clc;clear all;%f=x^3-3.7*x^2+6.25*x-4.69=0 denklemini [1.5 2] araliginda kökün varlýðýný araþtýrýnýz (TD=0.005)
XL=1.5;XR=2;
x=XL;YL=x^3-3.7*x^2+6.25*x-4.69;
x=XR;YR=x^3-3.7*x^2+6.25*x-4.69;
XM=(XL+XR)/2;x=XM;YM=x^3-3.7*x^2+6.25*x-4.69;
TD=0.0005;sayac=0;
while(abs(YM)>=TD)
    if YL*YM<0
       XR=XM;YR=YM;
    else if YR*YM<0
            XL=XM;YL=YM;
        end
    end
%     XM=(XL+XR)/2;x=XM;YM=x^3-3.7*x^2+6.25*x-4.69; %Yar?ya bölme
    XM=(XL*YR-XR*YL)/(YR-YL);x=XM;YM=x^3-3.7*x^2+6.25*x-4.69;% Regula-Falsi
    sayac=sayac+1;
end
sayac
kok=XM
denklemsonuc=YM
x=1.5:0.001:2;y=x.^3-3.7*x.^2+6.25*x-4.69;
plot(x,y);grid on;hold on;plot(kok,denklemsonuc,'x','LineWidth',2)
    