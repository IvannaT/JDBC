/*


    */
--1. Display all first_name and department_name
    select first_name,DEPARTMENT_NAME
    from EMPLOYEES inner join DEPARTMENTS
        on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

--2.Display all first_name and department_name including the  department without employee
select  FIRST_NAME, DEPARTMENT_NAME ,D.DEPARTMENT_ID
from EMPLOYEES e right join DEPARTMENTS D
    on e.DEPARTMENT_ID = D.DEPARTMENT_ID;
--3.Display all first_name and department_name including the  employee without department
select  * from employees;
select * from departments;
--to change to left ( swich  departmeng and employees
select FIRST_NAME, DEPARTMENT_NAME from DEPARTMENTS d right join
    EMPLOYEES e on d.MANAGER_ID = e.EMPLOYEE_ID ;

--4.Display all first_name and department_name
--including the  department without employee  and  employees  without departments
 select FIRST_NAME,DEPARTMENT_NAME
 from DEPARTMENTS d full join EMPLOYEES e
     on d.DEPARTMENT_ID = e.DEPARTMENT_ID;
--5.Display All cities and related country names
select CITY,COUNTRY_NAME from  LOCATIONS l
    inner join COUNTRIES c
        on l.COUNTRY_ID = c.COUNTRY_ID;
--6.Display All cities and related country names  including with countries without city
select * from COUNTRIES;
select * from LOCATIONS;
select CITY,COUNTRY_NAME
from LOCATIONS l  right  join COUNTRIES c
    on l.COUNTRY_ID = c.COUNTRY_ID;

--7.Display all department name and  street adress
select DEPARTMENT_NAME,STREET_ADDRESS
from DEPARTMENTS inner join  LOCATIONS
    on DEPARTMENTS.LOCATION_ID=LOCATIONS.LOCATION_ID;

--8.Display first_name,last_name and department_name,city for all employees
select  * from  EMPLOYEES;
select  * from  LOCATIONS;
select * from DEPARTMENTS;
select  FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY
from EMPLOYEES
    inner join DEPARTMENTS d
    on EMPLOYEES.DEPARTMENT_ID = d.DEPARTMENT_ID
inner join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID;

--9.Display first_name,last_name and department_name,city,country_name for all employees
-- Ellen                     Sales            Oxford     United  KIngdom
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,COUNTRY_NAME
from EMPLOYEES inner join DEPARTMENTS d
    on EMPLOYEES.DEPARTMENT_ID = d.DEPARTMENT_ID
inner join LOCATIONS l
    on d.LOCATION_ID = l.LOCATION_ID
inner join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID ;