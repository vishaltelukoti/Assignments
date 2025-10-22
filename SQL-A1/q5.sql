use practice;
select * from sys.tables;

create table Employee (
    EmpID INT PRIMARY KEY,           
    EmpName NVARCHAR(100) NOT NULL,  
    ManagerID INT NULL,              
    constraint FK_Manager foreign key (ManagerID) references Employee(EmpID)
);

insert into Employee values
(1,'Alice',NULL),     
(2,'Bob',1),
(3,'Charlie',1),
(4,'David',2),
(5,'Eve',2),
(6,'Frank',3);


select * from Employee;

declare @inputId int=6;
With empHierarchy as
(
    select EmpID,EmpName,ManagerID,1 as HierarchyLevel
    from Employee where EmpID=@inputId

    Union all

    select e.EmpID,e.EmpName,e.ManagerID,eh.HierarchyLevel+1
    from Employee e join empHierarchy eh on e.EmpID=eh.ManagerID
)

select eh.empID,eh.empName,e.EmpName as ManagerName,eh.HierarchyLevel from empHierarchy eh 
left join Employee e on eh.ManagerID=e.EmpID order by eh.HierarchyLevel;

select * from empHierarchy;
--select eh.EmpID,eh.EmpName,m.Empname as ManagerName,eh.HierarchyLevel
--from empHierarcy eh left join Employee m on eh.ManagerID=m.EmpID order by eh.HierarchyLevel;
