--4)Write a SQL query to maximum number from a table without using MAX or MIN aggregate functions.
create table num
(
Numbers int);

insert into num values 
(7859),
(6897),
(9875),	
(8659),
(7600),
(7550);

select top 1 Numbers from num order by Numbers desc;

