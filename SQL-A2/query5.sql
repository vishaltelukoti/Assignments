--5) Write an SQL query to fetch all the Employees who are also managers from the Employee Details table.

create table EmployeeDetails (
    EmpID int primary key,
    EmpName varchar(50),
    ManagerID int null  
);

insert into EmployeeDetails 
values
(1,'Suresh',NULL),
(2,'Ravi',1),
(3,'Neha',1),
(4,'Amit',2),
(5,'Priya',2),
(6,'Vijay',3),
(7,'Ramesh',3);

select * from EmployeeDetails;
select distinct e.EmpID ManagerID,e.EmpName ManagerName from EmployeeDetails e join
EmployeeDetails m on e.EmpID=m.ManagerID;
