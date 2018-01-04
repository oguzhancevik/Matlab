clc;
clear all;
% A=[1 0 2 -9;2 1 0 5;3 2 1 4]
A=[1 0 2 -9 5;3 2 1 0 5;6 3 2 1 4;12 -8 9 4 10]
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