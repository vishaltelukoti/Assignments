--2)write a query to find second highest salary in organisation without using subqueries and top

create table Employees (
    EmpID int identity(1,1) primary key,
    EmpName varchar(50),
    Salary decimal(10,2)
);

select * from Employees;
insert into Employees (EmpName, Salary)
values
('Amit', 50000),
('Ravi', 70000),
('Suresh', 90000),
('Neha', 85000),
('Priya', 70000),
('Ramesh', 40000);

With SalaryRank as
(select EmpName,Salary, row_number() over (order by salary desc) as RowNo
 from Employees)

select * from SalaryRank where RowNo=2;

--2nd way
select * from Employees order by Salary desc offset 1 rows fetch next 1 row only;