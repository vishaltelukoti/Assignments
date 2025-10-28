--3)write a query to find max salary and dep name from all the dept with out using top and limit

create table Dept (
    DeptID int primary key,
    DeptName varchar(50)
);
create table Emp (
    EmpID int identity(1,1) primary key,
    EmpName varchar(50),
    Salary decimal(10,2),
    DeptID int,
    foreign key (DeptID) references Dept(DeptID)
);

insert into Dept values 
(1,'HR'),
(2,'IT'),
(3,'Finance');

insert into Emp values
('Amit',50000,1),
('Ravi',60000,1),
('Suresh',90000,2),
('Neha',85000,2),
('Priya',75000,3),
('Vijay',70000,3);

select * from Dept;
select * from Emp;

select d.DeptName,max(e.Salary) as HighestSal from Emp e join Dept d on e.DeptID=d.DeptID
group by d.DeptName;


