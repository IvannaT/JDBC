-- 1. display full addresses from locations table in a single column
select * from LOCATIONS;
-- 2. display all information of the employee who has the minimum salary
--in employees table
select min(SALARY) from EMPLOYEES;

select * from EMPLOYEES
where SALARY=2100;

select * from EMPLOYEES
where SALARY = (select min(salary) from EMPLOYEES);
-- 3. display the second minimum salary from the employees

--second in salary
select min(salary) from EMPLOYEES
where salary >2100;
--get me second min dynamicly
select min(salary) from employees
where salary > ( select min(salary) from employees );

--get me informatiob about that guy
select * from EMPLOYEES
where salary=2200;

--make it dynamic --> SOLUTION
select * from EMPLOYEES
where salary=(select min(salary) from EMPLOYEES
              where salary >(select min(SALARY) from EMPLOYEES));
-- 4. display all information of the employee who has the second minimum
--salary
select * from EMPLOYEES
where salary=2200;

--make it dynamic --> SOLUTION
select * from EMPLOYEES
where salary=(select min(salary) from EMPLOYEES
              where salary >(select min(SALARY) from EMPLOYEES));
select * from employees
where salary = ( select min(salary) from employees
                 where salary > (select min(salary) from employees) );
-- 5. list all the employees who are making above the average salary;
select round (avg(salary))from EMPLOYEES;
                                   -- find info about these employees
  select * from EMPLOYEES
where SALARY>6462;


--make it dynamic
select * from EMPLOYEES
where SALARY>(select round (avg(salary))from EMPLOYEES);
-- how many employee getting more than avg
select count(*) from EMPLOYEES
where SALARY>(select round(avg(SALARY)) from EMPLOYEES);

-- how many employee getting more than avg for each job ID
select JOB_ID,count(*) from EMPLOYEES
where SALARY>(select round(avg(SALARY)) from EMPLOYEES)
group by JOB_ID;




-- 6. list all the employees who are making less than the average salary
select * from employees where salary < ( select avg(salary) from employees
);
-- 7. display manager name of 'Neena'
select MANAGER_ID from EMPLOYEES
    where LAST_NAME='Neena';

select * from EMPLOYEES
    where EMPLOYEE_ID=(select MANAGER_ID from EMPLOYEES
where FIRST_NAME ='Neena');


-- 8. find the 3rd maximum salary from the employees table (do not include
--duplicates)
select min(SALARY) from (select  distinct salary from  EMPLOYEES order by SALARY desc)
where ROWNUM<4;


-- first order salaries in desc
select distinct salary from EMPLOYEES
order by salary desc;

--make it dynamic
select min(salary) from (select distinct salary from EMPLOYEES
                         order by salary desc)
where ROWNUM<4;
-- 9. find the 5th maximum salary from the employees table (do not include
--duplicates)
select min(salary)from (select distinct SALARY from EMPLOYEES order by SALARY)
where ROWNUM<6;
-- 10. find the 7th maximum salary from the employees table (do not
--include duplicates)
select min(salary)from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<8;

-- 11. find the 10th maximum salary from the employees table (do not
--include duplicates)
select min(salary)from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<11;

-- 12. find the 3rd minimum salary from the employees table (do not
--include duplicates)
select max(salary) from (select distinct salary from employees
                         order by salary asc)
where rownum < 4;
-- 13. find the 5th minimum salary from the employees table (do not
--include duplicates)
select max(salary) from (select distinct salary from employees
                         order by salary asc)
where rownum < 4;
-- 14. find the 7th maximum salary from the employees table (do not
--include duplicates)
select min(salary) from (select distinct salary from employees
                         order by salary desc)
where rownum < 8;
-- 15. find the 10th maximum salary from the employees table (do not
--include duplicates)
select min(salary) from (select distinct salary from employees
                         order by salary desc)
where rownum < 11;
