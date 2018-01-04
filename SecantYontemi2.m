clc;clear all;
% Secant Yöntemi
xn_1=0.1;   xn=0.2;

x=xn_1;  fn_1=3*x+sin(x)-exp(x);

x=xn;     fn=3*x+sin(x)-exp(x);

hata=abs(xn-xn_1);     TD=0.00001;

sayac=0;

while(hata>TD)

    xn_y=xn-((fn)*(xn_1-xn)/(fn_1-fn));
    
    xn_1=xn ;  x=xn_1;   fn_1=3*x+sin(x)-exp(x);

    xn=xn_y;   x=xn;    fn=3*x+sin(x)-exp(x);

    hata=abs(xn-xn_1);

    sayac=sayac+1;

end

xn
sayac