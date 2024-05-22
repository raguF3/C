--create database hrv;
--go
--use hrv;

--create table zupanije(
--sifra int not null primary key identity (1,1),
--naziv varchar (50) not null,
--zupan int
--);


--create table zupani (
--sifra int not null primary key identity (1,1),
--ime varchar (50) not null,
--prezime varchar (50) not null
--);


--create table opcine (
--sifra int not null primary key identity (1,1),
--zupanija int,
--naziv varchar (50) not null
--);

--create table mjesta (
--sifra int not null primary key identity (1,1),
--opcina int,
--naziv varchar (50) not null
--);


alter table opcine add foreign key (zupanija) references zupanije (sifra);
alter table mjesta add foreign key (opcina) references opcine (sifra);
alter table zupanije add foreign key (zupan) references zupani (sifra);


select * from opcine;

