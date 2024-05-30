use master;
go
drop database if exists obitelj;
go
create database obitelj;
go
use obitelj;


create table  sestre (
sifra int not null primary key identity (1,1),
introvertno bit,
haljina varchar (31),
maraka decimal (16,6) not null,
hlace varchar (46),
narukvica int
);

create table zene (
sifra int not null primary key identity (1,1),
treciputa datetime not null,
hlace varchar (46) not null,
kratkamajica varchar (31),
jmbg char (11),
bojaociju varchar (39),
haljina varchar (44) not null,
sestra int
);

create table punci (sifra int not null primary key identity (1,1),
ogrlica int,
gustoca decimal (14,9) not null,
hlace varchar (41),
);

create table cure (
sifra int not null primary key identity (1,1),
novcica decimal (16,5),
gustoca decimal (18,6),
lipa decimal (13,10) not null,
ogrlica int,
bojakose varchar (38) not null,
suknja varchar (36) not null,
punac int not null
);


create table svekri (
sifra int not null primary key identity (1,1),
bojaociju varchar (40),
prstena int not null,
dukserica varchar (41) not null,
lipa decimal (13,8) not null,
eura decimal (12,7) not null,
majica varchar (35) not null
);

create table sestra_svekar (
sifra int not null primary key identity (1,1),
sestra int,
svekar int
);

create table muskarci (
sifra int not null primary key identity (1,1),
bojaociju varchar (50),
hlace varchar (30) not null,
modelnaocala varchar (43) not null,
maraka decimal (14,5),
zena int
);

create table mladici (
sifra int not null primary key identity (1,1),
suknja varchar (50),
kuna decimal (16,8),
drugiputa datetime not null,
asocijalno bit not null,
ekstroventno bit,
dukserica varchar (48),
muskarac int not null
);

alter table sestra_svekar add foreign key (sestra) references sestre (sifra);
alter table sestra_svekar add foreign key (svekar) references svekri (sifra);
alter table zene add foreign key (sestra) references sestre (sifra);
alter table mladici add foreign key (muskarac) references muskarci (sifra);
alter table muskarci add foreign key (zena) references zene (sifra);
alter table cure add foreign key (punac) references punci (sifra);
