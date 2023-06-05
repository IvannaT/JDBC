select * from LOCATIONS;
/*
 MULTI-ROW / AGGREGATE / GROUPING FUNC
 count
 max
 min
 avg
 sum

 it will take multiple row and gives single output
 */

select count(*) from DEPARTMENTS;
--how many unique(distinct) name we have?
select distinct FIRST_NAME from EMPLOYEES;
select count(distinct  FIRST_NAME) from EMPLOYEES;
--how many empl have works as 'IT_PROG'or 'SA-REP'
select count (*) from EMPLOYEES
where JOB_ID IN ('IT_PROG','SA_REP');

-- NOTE --> If you wanna count your result use * to get correct answer

-- How many employees we have as department_id is null
-- This gives us correct result since it counting the rows
select count(*) from EMPLOYEES
where DEPARTMENT_ID is null ;

-- This gives us wrong data if you wanna count rows, since aggregate functions ignore the null values
select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is null ;

-- This bot h gives you same result since there is no null the result
select count(*) from EMPLOYEES
where DEPARTMENT_ID is not null ;

select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is not null ;

--get max salary from employees
select max(SALARY) from  EMPLOYEES;
select min(SALARY) from  EMPLOYEES;
--sum
--get total salary of empl
select sum(SALARY) from EMPLOYEES;
--avg
--get avf from empl
select avg(SALARY) from EMPLOYEES;

--ROUND -it is numeric function
select round(avg(SALARY)) from EMPLOYEES;

select round(avg(SALARY)),2 from EMPLOYEES;







