--temp Tables

--Create table #temp_employee(Employeeid int,Jobtitle varchar(100),Salary int)

--select * from #temp_employee


--insert into #temp_employee Values('1001','HR','45000') 

--insert into #temp_employee
--select * from sql.[dbo].[EmployeeSalary]
use sql

--create table #Temp_employee2(jobtitle varchar(100),Count_of_Jobs int,Average_age int,Average_salary int)
--select * from #Temp_employee2


--Insert into #Temp_employee2
--select JobTitle,Count(JobTitle),Avg(Age),Avg(Salary) from EmployeeDemographics as demo
--inner join EmployeeSalary as sal
--on demo.EmployeeID = sal.EmployeeID
--Group by JobTitle

drop table if exists #Temp_employee2
create table #Temp_employee2(jobtitle varchar(100),Count_of_Jobs int,Average_age int,Average_salary int)



Insert into #Temp_employee2
select JobTitle,Count(JobTitle),Avg(Age),Avg(Salary) from EmployeeDemographics as demo
inner join EmployeeSalary as sal
on demo.EmployeeID = sal.EmployeeID
Group by JobTitle

select * from #Temp_employee2