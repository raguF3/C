use master;
go
drop database if exists dvd_branjin_vrh;
go
create database dvd_branjin_vrh;
go

use dvd_branjin_vrh;

create table korisnik (
sifra int not null primary key identity (1,1),
ime varchar (50) not null,
prezime varchar (50) not null,
email int
);

create table kontakt (
sifra int not null primary key identity (1,1),
email int,
prijavnica varchar (100)
);

create table događanja (
sifra int not null primary key identity (1,1),
vijesti varchar (100) not null,
DVD varchar (50) not null,
Fotografije varchar (50),
email int
);

alter table kontakt add foreign key (email) references događanja (sifra);
alter table kontakt add foreign key (email) references korisnik (sifra);
alter table korisnik add foreign key (email) references događanja (sifra);




use dvd_branjin_vrh;
go
drop database if exists dječji_vrtić_crvenkapica;
go
create database dječji_vrtić_crvenkapica;
go
use dječji_vrtić_crvenkapica;
go

create table info (
sifra int not null primary key identity (1,1),
novosti varchar (1000) not null,
galerija_fotografija varchar (50),
broj_telefona int,
email varchar (50)
);


create table prijava(
sifra int not null primary key identity (1,1),
ime varchar (50),
prezime varchar (50),
oib char (11),
email varchar (50),
polaznik int
);

create table polaznici (
sifra int not null primary key identity (1,1),
popis_polaznika int,
odgojne_skupin varchar (50)
);

alter table polaznici add foreign key (popis_polaznika) references prijava (sifra);
alter table info add foreign key (broj_telefona) references prijava (sifra);