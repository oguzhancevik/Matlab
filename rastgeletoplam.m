clc
clear all
rastgele_sayilar=[];
sayac=0;
esik=36;
top=0;
while top<=esik
    rastgele_sayi=-1.5+rand*(3.8);
    top=top+rastgele_sayi;
    sayac=sayac+1;
    rastgele_sayilar(sayac,1)=rastgele_sayi;
end
esik
rastgele_sayilar
top
sayac
    