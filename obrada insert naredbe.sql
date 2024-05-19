select * from smjerovi;

--školska sintaksa
--1 šifra koju je dodijelila baza
insert into smjerovi (naziv, trajanje, cijena, izvodiseod, verificiran)
values ('web programiranje',225,1589.89,'2024-01-15',1);

--loša sintaksa
--2
insert into smjerovi values
('web dizajn', null, null, null,null);

--mvp minimalna dobra sintaksa (minimal viable product)
--3
insert into smjerovi (naziv) values('šđđč ćčđž');


select * from grupe;
--1

insert into grupe (naziv, smjer,maxpolaznika)
values ('wp4',1,26);

insert into grupe (naziv, smjer, maxpolaznika)
values ('wp5',2,26);

select * from polaznici;

--1-27
insert into polaznici (ime, prezime, email) values
('Lea', 'Raguž','raguz.leaa@gmail.com'),
('Ante','Filipović','ante.filipovic72@gmail.com'),
('Senka', 'Banjac','sbanjac88@gmail.com'),
('Matej', 'Sudarić','matejsudo@gmail.com'),
('Sanja', 'Boduljak','matkosanja@gmail.com');


select * from clanovi;

--članovi grupe wp4
insert into clanovi (grupa, polaznik) values
(1,1),(1,2),(1,3),(1,4),(1,5);

--članovi grupe wp5;
insert into clanovi (grupa, polaznik) values
(2,1),(2,3),(2,5);
