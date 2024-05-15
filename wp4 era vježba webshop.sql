use master;
go
drop database if exists webshop;
go
create database webshop;
go

use webshop;

create table proizvodi(
sifra int not null primary key identity (1,1),
naziv varchar (50),
datumnabave datetime,
cijena decimal (18,2),
aktivan bit
);

create table racuni (
sifra int primary key identity (1,1),
datum datetime,
kupac int,
statusracuna bit
);

create table stavke (
racun int,
proizvod int,
kolicina int not null primary key identity (1,1),
cijena decimal (18,2),
);

create table kupci (
sifra int not null primary key identity (1,1),
ime varchar (50) not null,
prezime varchar (50) not  null,
ulica varchar (50) not null,
mjesto varchar (50) not null
);


alter table stavke add foreign key (proizvod) references proizvodi (sifra);
alter table stavke add foreign key (racun) references racuni (sifra);
alter table racuni add foreign key (kupac) references kupci (sifra);