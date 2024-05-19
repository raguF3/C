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