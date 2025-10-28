create database a2;
use a2;

create table Persons (
    PersonID int identity(1,1) primary key,
    Name varchar(50)
);

insert Persons (Name)
values ('Suresh'),('Sures'),('Sureesh'),('Sourish'),('Ramesh'),('Naresh'),('Suhas'),('Suresha'),('Sudesh'),('Suresch'),('Suraj'),
('Mahesh'),('Lokesh'),('Vikram'),('Neha'),(''),(NULL);

select count(*) from Persons;
select Name,soundex(Name) as SoundCode, difference(Name,'suresh') as SimilarityScore
from Persons where difference(Name,'suresh')>=2  order by SimilarityScore desc;
