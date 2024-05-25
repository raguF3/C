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


--filtriranje redova
--where radi operatorima
-- = uzima točnu vrijednost 
-- operatori usporedbe: < > <= => != 
select * from polaznici where sifra=1;
select * from polaznici where sifra!=10;

--logički operator
--and, or i not

select * from polaznici where
sifra=5 or prezime='Boduljak';

select ime, prezime from polaznici where
sifra>1 and sifra<5;

select sifra, ime, prezime from polaznici where
not (sifra>1 and sifra<5);

--ostali operatori 
-- like, in, between, is null, is not null

select * from polaznici
where ime like 'L%';

--ispiši sve ženske polaznice s najmanjom greškom
select * from polaznici 
where ime like 'A%';

--google način rada mora imati dva ili tri slova najmannje
select * from polaznici
where ime like '%an%' or prezime like '%an%';

select * from polaznici where
sifra in (2,1,4,3);

select * from polaznici where
sifra between 2 and 5;

select * from smjerovi 
where izvodiseod between '2024-01-01' and '2024-12-31';

select * from smjerovi;

--želim vidjeti sve smjerove koj nemaju definirano trajanje

select * from smjerovi
where trajanje is not null;

select * from smjerovi
where trajanje is null;


