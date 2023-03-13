--Stored Procedure

create procedure test
as 
select * from EmployeeDemographics

exec test

create procedure Temp_employee
as
drop table if exists #temp_employee
create table #temp_employee
(jobtitle varchar(100),
Employeesperjob int,
AverageAge int,
AverageSalary int)

insert into #temp_employee
select JobTitle,count(JobTitle),avg(Age),avg(Salary) from EmployeeDemographics demo
inner join  EmployeeSalary sal
on demo.EmployeeID = sal.EmployeeID
group by JobTitle

select *from #temp_employee

--jobtitle from salary table
--salary from salary table
--count of employees jobtitle from both demographic and salary
--average age from demo
--average salary from salary

exec Temp_employee @jobtitle = 'accountant'




create procedure Temp_employee2
as
drop table if exists #temp_employee
create table #temp_employee
(jobtitle varchar(100),
Employeesperjob int,
AverageAge int,
AverageSalary int)

insert into #temp_employee
select JobTitle,count(JobTitle),avg(Age),avg(Salary) from EmployeeDemographics demo
inner join  EmployeeSalary sal
on demo.EmployeeID = sal.EmployeeID
group by JobTitle

select *from #temp_employee

--jobtitle from salary table
--salary from salary table
--count of employees jobtitle from both demographic and salary
--average age from demo
--average salary from salary

exec Temp_employee2