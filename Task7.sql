/* create a query joining the result sets from the dates temporary table you created during
 the previous lecture with a new Common Table Expression (CTE) containing the same columns. 
 This time, combine the two sets vertically.
 Task by :Jewel Alam */

 with cte as 
(select 
now() as current_dateand_time,
DATE_SUB(NOW(), interval 1 month) as 1_month_earlier,
date_add( now() , interval 1 year) as 1_year_later)
select * from dates union
select * from  cte c;