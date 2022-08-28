create table brinquedos (
idacesso int primary key auto_increment,
data timestamp default current_timestamp, 
prateleira char(2) not null,
bloqueio varchar(10) default 'inativo', 
	constraint chkbloqueio check(bloqueio in ('inativo', 'ativo'))
);

select * from brinquedos;
desc brinquedos;
drop table brinquedos;

insert into brinquedos (bloqueio, prateleira) values
('ativo', 4);
insert into brinquedos (bloqueio, prateleira) values
('inativo', 3);
insert into brinquedos (bloqueio, prateleira) values
('outrovalor', 6);
insert into brinquedos (prateleira) values
(2);

select * from brinquedos order by prateleira;
select * from brinquedos order by bloqueio;
select * from brinquedos order by idacesso desc;