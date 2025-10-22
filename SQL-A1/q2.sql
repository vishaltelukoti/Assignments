use master;

create function dbo.getAge(@dob date)
returns int
as 
begin 
	declare @age int;
	
	set @age=datediff(year,@dob,getdate())

	if month(getdate())<month(@dob)
		set @age-=1
	else if month(getdate())=month(@dob) and day(getdate())<day(@dob)
		set @age-=1
	return @age;
end;

select dbo.getAge('2000-11-15');
	