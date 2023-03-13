--String function : TRIM,LTRIM,RTRIM,REPLACE,SUBTRING,UPPER,LOWER

drop table employeeerrors;

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')


select * from EmployeeErrors

-- Using Trim, LTRIM, RTRIM

--select employeeid from employeeerrors

--select employeeid, trim(employeeid) as IdTrim from employeeerrors

--select employeeid,ltrim(employeeid) as IdTrim from employeeerrors

--select employeeid,rtrim(employeeid) as IdTrim from employeeerrors


--Using Replace

select lastname from EmployeeErrors

Select  lastname,replace(lastname,'- Fired','') as LastName_Fixed from EmployeeErrors

--USing Substrings


select substring(Firstname,2,3) from EmployeeErrors

--on Fuzzy match
use sql;
select err.FirstName,SUBSTRING(err.FirstName,1,3)
,demo.FirstName,substring(demo.FirstName,1,3)  from EmployeeErrors as err
inner join employeedemographics as demo
on SUBSTRING(err.FirstName,1,3) = substring(demo.FirstName,1,3) 

select SUBSTRING(err.FirstName,1,3),substring(demo.FirstName,1,3)  from EmployeeErrors as err
inner join employeedemographics as demo
on SUBSTRING(err.FirstName,1,3) = substring(demo.FirstName,1,3) 

--can be used in Gender,Lastname,Age,Date of birth this fuzzy match using substring

--Using UPPER And LOWER


select Upper(firstname)as Capital_first_name,
Upper(Lastname)as Capital_Last_name,upper(replace(lastname,'- Fired','')) as lastname_fixed,
CONCAT(Upper(firstname),' ',Upper(Lastname)) as Full_name,
CONCAT(Upper(firstname),' ',upper(replace(lastname,'- Fired',''))) as Fixed_FULL_name
from EmployeeErrors

select Lower(firstname)as Lower_first_name,
Lower(Lastname)as Lower_Last_name,Lower(replace(lastname,'- Fired','')) as lastname_fixed,
CONCAT(Lower(firstname),' ',Lower(Lastname)) as Full_name,
CONCAT(Lower(firstname),' ',Lower(replace(lastname,'- Fired',''))) as Fixed_FULL_name
from EmployeeErrors
