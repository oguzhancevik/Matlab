function x = secantfonksiyon (f , x0 , x1 )
x=x0;y0 = eval(f);
x=x1;y1 = eval(f);
x = x1 - y1*( x0 - x1 ) /( y0 - y1 );
