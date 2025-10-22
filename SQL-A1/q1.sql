use master;
go;
create function dbo.getnum(@Input varchar(max))
returns varchar(max)
as 
begin
	declare @output varchar(max)='';
	declare @i int =1;
	while @i<=len(@Input)	
	begin
		if substring(@Input,@i,1) like '[0-9]'
			set @output+=substring(@Input,@i,1);
		set @i+=1
	end
	return @Output
end

select dbo.getnum('A0c9d40o');
