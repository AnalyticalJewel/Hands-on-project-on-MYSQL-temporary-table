/* Create a query joining the result sets from the dates temporary table  with a new Common Table Expression (CTE)
 containing the same columns.
  Let all columns in the result set appear on the same row.
  Task by : Jewel Alam */

  CREATE TEMPORARY TABLE dates AS
SELECT 
    NOW() AS curr_dateandtime,
    DATE_SUB(NOW(), INTERVAL 2 MONTH) AS 2_month_earlier,
    DATE_ADD(NOW(), INTERVAL 2 YEAR) AS 2_year_later;
    select * from temp_date;

with cte as 
(select 
now() as current_dateand_time,
DATE_SUB(NOW(), interval 2 month) as 2_month_earlier,
date_add( now() , interval 2 year) as 2_year_later)
select * from dates d1 join cte c;