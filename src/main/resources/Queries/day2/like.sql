select * from  departments;
/*
LIKE
Percent ( %)      -->  for matching any sequence of characters.
Underscore ( _ )  -->  for matching any single character.

  - contains
  - startwith
  - endswith

 */
 --get me all employ whose firstname  startwith B and also has 5 letters(Bruce)
select * from EMPLOYEES
where FIRST_NAME LIKE 'B____';
--get 5 letter names where the middle char is z
select * from EMPLOYEES
where FIRST_NAME LIKE '__z__';
--get firstname where second char is a
select * from EMPLOYEES
where FIRST_NAME LIKE '_a%';
--get all info whose firstname endswith r
select * from EMPLOYEES
where FIRST_NAME LIKE '%r';
--get any jobtitle info endswith manager
select * from JOBS
where JOB_TITLE LIke '%Manager';
select count(*) from JOBS
where JOB_TITLE LIke '%Manager';




