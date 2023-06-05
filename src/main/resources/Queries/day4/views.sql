select * from employees;

create view EmployeeInfo as
select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.'as
inintials,
first_name||'makes'|| salary as employees_salary  from EMPLOYEES;


select * from EmployeeInfo;
select  inintials from EMPLOYEEINFO;
select  employees_salary from EMPLOYEEINFO;
drop view EMPLOYEEINFO;
