clc;clear all;
x1=-8;x2=10;
f1=x1-5;f2=x2-5;
if (abs(f1)<abs(f2))
yaklasimhatasi=abs(f1);
else
    yaklasimhatasi=abs(f2);
end
while(yaklasimhatasi>0.0001)
                tmpx=(x1+x2)/2; ftmp=tmpx-5;
                if (f1<0 && ftmp>0)
                    x2=tmpx;
                else
                    x1=tmpx;
                end
                f1=x1-5; f2=x2-5;
                if (abs(f1)<abs(f2))
                yaklasimhatasi=abs(f1);
                else
                 yaklasimhatasi=abs(f2);
                end
end