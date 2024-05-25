select * from smjerovi;

--filtriranje po kolonama
--*označavanje sve kolone
--naziv kolone, konstanta, izraz

select *, 
naziv as smjer, --kolona
cijena, 
12 as sati, --konstanta
getdate () as datum --izraz
from smjerovi;

