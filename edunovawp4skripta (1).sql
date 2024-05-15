use master;
go
drop database if exists edunovawp4;
go
create database edunovawp4;
go

use edunovawp4;
-- Tipovi podataka:https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16
create table smjerovi(
sifra int not null primary key identity(1,1),
naziv varchar(100) not null,
trajanje int null, -- ne treba pisati null jer je on podrazumijevan
cijena decimal(18,2),
izvodiseod datetime,
verificiran bit
);


create table grupe(
sifra int not null primary key identity(1,1),
naziv varchar(20) not null,
smjer int not null,
predavac varchar(50),
maxpolaznika int not null
);


create table polaznici(
sifra int not null primary key identity(1,1),
ime varchar(20) not null,
prezime varchar(20) not null,
oib char(11),
email varchar(50) not null
);


create table clanovi(
grupa int not null,
polaznik int not null
);

alter table grupe add foreign key (smjer) references smjerovi(sifra);
alter table clanovi add foreign key (grupa) references grupe(sifra);
alter table clanovi add foreign key (polaznik) references polaznici(sifra);