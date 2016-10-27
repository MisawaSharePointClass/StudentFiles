-- sqlcmd -S SP2013SERVER\SHAREPOINT -i d:\CreateStudents.sql
use tempdb
go

drop table Students;
go

create table Students (
	Id		int	primary key	identity(1,1),
	FirstName	varchar(50)	not null,
	LastName	varchar(50)	not null,
	Rank		varchar(50)	not null
);
go

insert into Students
values
('Fred', 'Flintstone', 'Airmen'),
('Barney', 'Rubble', 'Airmen 1st Class'),
('Wima', 'Flintstone', 'Sr Airmen'),
('Betty', 'Rubble', 'Sergeant');
go

grant select, insert, update, delete to public;
go

select * from Students;
go
