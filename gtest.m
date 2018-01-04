function [ sonuc ] = gtest( adaygx,aralik,hassasiyet )

aralik=aralik(1,1):hassasiyet:aralik(1,2);
turev_g=diff(adaygx,'x');
x=aralik;
g_yerinekoyma=eval(turev_g);
g_test=max(abs(g_yerinekoyma));
if g_test<1
    sonuc=1;
else
    sonuc=0;
end


end

