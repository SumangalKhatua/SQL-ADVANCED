--Advance CTE (Common TAble Expression)


--select FirstName,LastName,Gender,salary,
--count(Gender) over(partition by Gender) as 'Count of Males and Females',
--avg(Salary) over(partition by gender) as 'Average salary Based on Gender'
--from EmployeeDemographics as demo 
--inner join EmployeeSalary as sal
--on demo.EmployeeID = sal.EmployeeID

--with CTE_employee as
--(select FirstName,LastName,Gender,salary,
--count(Gender) over(partition by Gender) as 'Count of Males and Females',
--avg(Salary) over(partition by gender) as 'Average salary Based on Gender'
--from EmployeeDemographics as demo 
--inner join EmployeeSalary as sal
--on demo.EmployeeID = sal.EmployeeID)
--select * from CTE_employee

