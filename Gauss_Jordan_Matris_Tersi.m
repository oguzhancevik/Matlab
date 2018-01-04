clc;clear all;
A=[2 3 3;-1 2 3;1 -1 2];
B=eye(size(A));
G_A=[A B];
%Alt üçgensel Hale getirme
[sat,sut]=size(G_A);
% Sadece Birinci Sutunu Sifirlamak icin
    for j=2:sat 
        G_A(j,:)=G_A(j,:)-G_A(1,:)*(G_A(j,1)/G_A(1,1));
    end
 G_A
% Üst üçgensel hale getirme
for i=2:sat   
    for j=1:sat
        if(i~=j) 
        G_A(j,:)=G_A(j,:)+G_A(i,:)*(-G_A(j,i)/G_A(i,i));    
        end 
    end
end
G_A

% Birim matris yapma bulma
for s=1:sat
    G_A(s,:)=G_A(s,:)/G_A(s,s);
end

G_A
[sat2 sut2]=size(A);
A_Ters=G_A(:,sut2+1:sut)
Matlab_A_Ters=inv(A)
Saglama=A_Ters*A