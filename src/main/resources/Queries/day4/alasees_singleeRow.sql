
select * from employees;

/*
 ALIASES

 -- Rename column -- > Give an temporary name for column.It will not anything into database



 -- Rename table --> JOINS


 */

-- Rename column
-- Spaces are not allowed to rename column.It makes all UPPERCASE
select FIRST_NAME as given_name from EMPLOYEES;

-- It will not change anything from db
select FIRST_NAME from EMPLOYEES;

select max(salary) as highest_salary from employees;


-- Another to rename.It will use column name as it is.Also we can use spaces as well
select FIRST_NAME as "given name" from EMPLOYEES;

/*
 */
-- CONCAT

--Java --> +    --> firstname+" "+lastname

--In SQL ---> ||   --> firstname||' '||lastname

 */

 -- Add email to @gmail.com domain and display as full_email
select * from EMPLOYEES; -- > SKING@gmail.com    --> column name is full_email
select EMAIL ||'2gmail.com'as  full_email from EMPLOYEES;

--another way to concat
select concat (EMAIL,'@gmail.com')as full_email from EMPLOYEES;



--LOWER
select lower(concat(EMAIL,'@gmail.com')) as full_email from EMPLOYEES;


--UPPER
select upper(concat(EMAIL,'@gmail.com')) as full_email from EMPLOYEES;

-- INITCAP
-- It makes first letter uppercase
select EMAIL from EMPLOYEES;
select initcap(EMAIL) from EMPLOYEES;

-- LENGTH
-- It will length of provided data

select length(email) from EMPLOYEES;

-- display all the employees first name and length of it in the result order them based on length
select FIRST_NAME,length(FIRST_NAME) as length_firstname from EMPLOYEES
order by length(FIRST_NAME);

--by  column aliases
select FIRST_NAME,length(FIRST_NAME) as length_firstname from EMPLOYEES
order by length_firstname;

--by  column index
select FIRST_NAME,length(FIRST_NAME) as length_firstname from EMPLOYEES
order by 2;


/*
 SUBSTR(colName,beginIndex,numberOfChar)

 - if beginIndex is o , it is treated as 1
 - if beginIndex is negative , it will start from backward of data
 - if numberOfChar is omitted , it works till the end

 */
 select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' from EMPLOYEES;
select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.' from EMPLOYEES;


-- IQ from screenshot
select FIRST_NAME,salary from EMPLOYEES
where SALARY>3000
order by lower(substr(FIRST_NAME,-3)) asc,SALARY desc ;

