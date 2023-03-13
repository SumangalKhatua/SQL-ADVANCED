--Subqueries in select,from and where queries


select  * from EmployeeSalary
-- Subquery in Select

select employeeid,salary,
(select avg(Salary) from EmployeeSalary) as All_Average_Salary 
from EmployeeSalary

-- How to do it with Partition By

select employeeid,salary,avg(salary) over () as All_Average_Salary 
from EmployeeSalary


-- Why Group By doesn't work

select employeeid,salary,avg(salary)
from EmployeeSalary
group by employeeid,salary
order by 1,2,3

-- Subquery in From

select sub.employeeid,sub.allavgsal from
(select employeeid,salary,avg(salary) over ()as ALLAVGSAL from EmployeeSalary) as sub


-- Subquery in Where

select employeeid,jobtitle,salary from EmployeeSalary
where employeeid in (select EmployeeID from EmployeeDemographics as demo
where age>30)
order by employeeid


