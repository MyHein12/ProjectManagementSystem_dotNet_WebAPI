use master
go
use PMSystemDb
go

insert into Departments values('Development')
insert into Departments values('Design')
insert into Departments values('Marketing x')
select * from Departments

insert into Roles values('Manager')
insert into Roles values('Employee')
select * from Roles

insert into Employees values('han@gmail.com', 'pwd123', N'Nguyễn Thị Mỹ Hân', '056391346', 100.0, 1, 1, 1)
insert into Employees values('han1@gmail.com', 'pwd123', N'Nguyễn Hữu Toàn', '056391346', 100, 1, 2, 2)
insert into Employees values('han2@gmail.com', 'pwd123', N'Trịnh Ngọc Trung Trực', '056391346', 100, 0, 3, 3)
insert into Employees values('HRexample@gmail.com', 'HRexample123', 'Human Resource', '0123456789', 100, 1, 4, 3)
select * from Employees	

insert into Projects values('Demo Project', N'Đây là mô tả dự án', 'In Progress', '2012-02-21T18:10:00', '2013-02-21T18:10:00',  null, null)
insert into Projects values('Demo Project 2', N'Đây là mô tả dự án', 'Pending', '2012-02-21T18:10:00', '2013-02-21T18:10:00',  null, null)
insert into Projects values('Demo Project 2', N'Đây là mô tả dự án', 'Warning', '2012-02-21T18:10:00', '2013-02-21T18:10:00',  null, null)
insert into Projects values('Demo Project 4', N'Đây là mô tả dự án', 'Complete', '2012-02-21T18:10:00', '2013-02-21T18:10:00',  null, null)
select * from Projects
select * from ProjectDepartments

insert into ProjectDepartments values('1', '1', 0)
insert into ProjectDepartments values('1', '2', 1)
insert into ProjectDepartments values('1', '3', 1)
insert into ProjectDepartments values('2', '2', 0)
insert into ProjectDepartments values('3', '3', 0)
insert into ProjectDepartments values('4', '1', 0)
insert into ProjectDepartments values('4', '2', 1)


insert into Missions values('Demo Mission 1', 'This is description of mission', 'To Do', '2012-02-21T18:10:00', '2013-02-21T18:10:00',  null, null, 1)
insert into Missions values('Demo Mission 2', 'This is description of mission', 'Done', '2012-02-21T18:10:00', '2013-02-21T18:10:00',  null, null, 1)
insert into Missions values('Demo Mission 3', 'This is description of mission', 'In Progress', '2012-02-21T18:10:00', '2013-02-21T18:10:00',  null, null, 1)
insert into Missions values('Demo Mission 4', 'This is description of mission', 'In Progress', '2012-02-21T18:10:00', '2013-02-21T18:10:00',  null, null, 1)

insert into Missions values('Demo Mission 21', 'This is description of mission', 'To Do', '2012-02-21T18:10:00', '2013-02-21T18:10:00',  null, null, 2)
insert into Missions values('Demo Mission 22', 'This is description of mission', 'Done', '2012-02-21T18:10:00', '2013-02-21T18:10:00',  null, null, 2)
insert into Missions values('Demo Mission 23', 'This is description of mission', 'In Progress', '2012-02-21T18:10:00', '2013-02-21T18:10:00',  null, null, 3)
insert into Missions values('Demo Mission 24', 'This is description of mission', 'In Progress', '2012-02-21T18:10:00', '2013-02-21T18:10:00',  null, null, 4)
select * from Missions

insert into EmployeeMissions values (1,1, null)
insert into EmployeeMissions values (1,2, null)
insert into EmployeeMissions values (1,3, null)
insert into EmployeeMissions values (1,4, null)

insert into EmployeeMissions values (2,1, null)
insert into EmployeeMissions values (2,2, null)
insert into EmployeeMissions values (3,1, null)
insert into EmployeeMissions values (3,2, null)

insert into EmployeeMissions values (2,5, null)
insert into EmployeeMissions values (2,6, null)
insert into EmployeeMissions values (3,7, null)
insert into EmployeeMissions values (3,8, null)
select * from EmployeeMissions


select * from Documents

select * from Notifications

-- Disable foreign key constraints
EXEC sp_MSforeachtable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL';

-- Delete data from all tables
EXEC sp_MSforeachtable 'DELETE FROM ?';

-- Enable foreign key constraints
EXEC sp_MSforeachtable 'ALTER TABLE ? WITH CHECK CHECK CONSTRAINT ALL';

