clc;clear all;
A=[3 2 1 4;2 1 0 5;1 0 2 -9];
% A=[2 3 3 7;-1 2 3 8;1 -1 2 -1];
[sat,sut]=size(A);
%Alt üçgensel Hale getirme
% Sadece Birinci Sutunu Sifirlamak icin
    for j=2:sat 
        A(j,:)=A(j,:)-A(1,:)*(A(j,1)/A(1,1));
    end
 A
% Üst üçgensel hale getirme
for i=2:sat   
    for j=1:sat
        if(i~=j) 
        A(j,:)=A(j,:)+A(i,:)*(-A(j,i)/A(i,i));    
        end 
    end
end
A
% Kökleri bulma
for s=1:sat
    A(s,:)=A(s,:)/A(s,s);
    x(s)=A(s,sut);
end
A
x1=x(1)
x2=x(2)
x3=x(3)


%Alt üçgensel Hale getirme Gauss-Eliminasyondan Al?nd?
% [sat,sut]=size(A);
% for i=1:sat-1
%     for j=i+1:sat
%         A(j,:)=A(j,:)-A(i,:)*(A(j,i)/A(i,i));
%     end
% end