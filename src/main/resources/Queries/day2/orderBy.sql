select  * from employees
--get all info from employees who is making low salary to high

order by SALARY asc;
select  * from employees
order by SALARY desc;

--how can we use index to sort data?
--index needs to in limit your colum count

select  * from employees
order by  8;
select  EMAIL,FIRST_NAME from employees
order by 2;
--get me all info where employee-id<120
--and order the based alphabetical order
select * from EMPLOYEES
 where EMPLOYEE_ID <120
order by FIRST_NAME  ;

select * from EMPLOYEES
order by  FIRST_NAME ,LAST_NAME desc ;







