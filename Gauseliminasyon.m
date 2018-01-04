clc;
clear all;
% üst üçgensel hale getirme
A=[3 2 1 5;2 1 0 4;1 0 2 6;1 8 6 3];
sonuc=[4;5;-9;4];
AA=[A sonuc];
[sat sut]=size(AA);
for j=1:sat
    for i=1:sat
        if(i>j)
           fark=AA(i,j)/AA(j,j);
            for k=1:sat
                AA(i,k)=AA(i,k)-fark*AA(j,k);
            end
        end
    end
end
AA