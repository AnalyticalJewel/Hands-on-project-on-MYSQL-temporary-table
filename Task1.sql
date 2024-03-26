/* Store the highest contract salary values of all male employees in a temporary table called male_max_salaries.
Project by:Jewel Alam */

create temporary table Maximum_male_salary
select
s.emp_no,max(s.salary) as maximum_salary_of_male 
from 
salaries s join employees e 
on s.emp_no=e.emp_no 
where e.gender='M'
group by s.emp_no
;

/* query to check the contant of the temporary table*/

select * from maximum_male_salary;
