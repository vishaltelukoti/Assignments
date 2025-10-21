use master;

create table testerror
(
	id int,
	name varchar(20),
	errorcol as (1/0)
);
insert into testerror(id,name) values (1,'abc')
insert into testerror(id,name) values (2,'cde'),(3,'fgh');
select id,name from testerror;
select * from testerror;--error
select errorcol from testerror;--error