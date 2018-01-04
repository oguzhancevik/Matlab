clc;clear all; syms x
f=x^3-x-3;g1=x^3-3;g2=(x+3)^(1/3);g3=3/(x^2-1);devam=0;
aralik=[0 2];hassasiyet=0.00001;
[ sonuc1 ] = gtest( g1,aralik,hassasiyet );
[ sonuc2 ] = gtest( g2,aralik,hassasiyet );
[ sonuc3 ] = gtest( g3,aralik,hassasiyet );
if sonuc1==1
    g=g1;devam=1;
elseif sonuc2==1
        g=g2;devam=1;
        elseif sonuc3==1
            g=g3;devam=1;
else
    disp('Uygun g fonksiyonu bulunamad?');
end
if devam==1
TD=0.0000005;sayac=0;
x=0;y=eval(g);
while (abs(x-y)>TD)
    x=y;
    y=eval(g);
    sayac=sayac+1;
end
sayac
kok=x
denklemsonuc=eval(f)
end
x=0:0.001:2; plot(x,eval(f));grid on;hold on;plot(kok,denklemsonuc,'x','LineWidth',2)



