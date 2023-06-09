USE [Sql]
GO
/****** Object:  StoredProcedure [dbo].[Temp_employee]    Script Date: 13-03-2023 17:35:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Temp_employee]
@Jobtitle varchar(100)
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
where JobTitle = @Jobtitle
group by JobTitle

select *from #temp_employee