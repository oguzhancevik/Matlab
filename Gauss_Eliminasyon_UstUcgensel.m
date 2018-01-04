clc;
clear all;
% A=[1 0 2 -9;2 1 0 5;3 2 1 4]
A=[1 0 2 -9 5;3 2 1 8 5;6 3 2 1 4;12 -8 9 4 10]
[sat sut]=size(A);

for i=1:sat
    k=A(i,i);ind=i;
    for j=(i+1):sat
        m=A(j,i);
        if (m>k)
            k=m; ind=j;
        end
    end
    tmp=A(i,:);
    A(i,:)=A(ind,:);
    A(ind,:)=tmp;
end
PivotA=A

% Ustuçgensel Hale Getirme (Matrisin esas köþegen elemanlarýnýn 0 olmadýðý durum için)

[sat sut]=size(PivotA);
for j=1:sat
    for i=1:sat
        if(i>j)
            katsayi=PivotA(i,j)/PivotA(j,j);
            for k=1:sut
                PivotA(i,k)=PivotA(i,k)-katsayi*PivotA(j,k);
            end
        end
    end
end

PivotA


