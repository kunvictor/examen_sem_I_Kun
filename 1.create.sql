create table if not exists tara
(
fid serial primary key,
nume varchar(50) unique not null,
suprafata decimal null
);

create table if not exists judete
(
fid serial primary key,
nume varchar(50) unique not null,
indicativ char(2) not null,
suprafata decimal null,
tara_fid integer not null references tara(fid)
);

