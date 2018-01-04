clc;
clear all;
Katsayi=[2 -3;-2 1];
sonuc=[5;1];
cozum=zeros(2,1);
[sat sut]=size(Katsayi);

for i=1:sut
    D=Katsayi;
    D(:,i)=sonuc;
    cozum(i,1)=det(D)/det(Katsayi);
end
cozum
