use master;
go
drop database if exists samostan;
go
create database samostan;
go

use samostan;

create table svecenici(
sifra int primary key identity (1,1),
ime int,
prezime varchar (50),
nadredjeni varchar (50)
);

alter table svecenici add foreign key (ime) references svecenici (sifra);