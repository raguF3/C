--use master;
--go
--drop database if exists racunEra;
--go
--create database racunEra;
--go
--use racunEra;

--create table racuni (
--sifra int not null primary key identity (1,1),
--redniBroj int,
--datum datetime,
--kupac varchar (50),
--placno bit
--);

--create table stavke_racuna (
--racun int,
--artikl int,
--cijena decimal (18,2),
--kolicina int,
--popust int
--);

--alter table stavke_racuna add foreign key (racun) references racuni (sifra);


use master;
go
drop database if exists radnikEra;
go
create database radnikEra;
go
use radnikEra;

create table radnik (
sifra int not null primary key identity (1,1),
ime nvarchar (50),
prezime nvarchar (50),
nadredeni int
);

alter table radnik add foreign key (nadredeni) references radnik (sifra);