function [] = fonksiyon_ciz( kok,aralik,a,b,c )
figure();
x=aralik(1,1):0.001:aralik(1,2);
y=a*x.^2+b*x+c;
plot(x,y);
hold on
y1=a*kok^2+b*kok+c;
plot(kok,y1,'*')