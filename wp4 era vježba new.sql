--use master;
--go
--drop database if exists new;
--go
--create database new;
--go

use new;
create table persons (
id int not null primary key identity (1,1),
lastname varchar (50) not null,
firstname varchar (50),
age int 
);

create table orders (
orderid int primary key identity (1,1),
ordernumber int not null,
personid int
);

alter table orders add foreign key (personid) references persons (id);