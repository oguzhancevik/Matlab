function [ kok ] = kok_bul( a,b,c,aralik )
sonuc=1;
while(sonuc>abs(0.0001))
    x=aralik(1,1)+rand*(abs(aralik(1,1))+abs(aralik(1,2)));
    sonuc=a*(x^2)+b*x+c;
end
kok=x;

