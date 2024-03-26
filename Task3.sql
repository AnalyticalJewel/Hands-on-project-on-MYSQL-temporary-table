/* Create a temporary table called 'dates' which contains the following three datetime  values:
1. The current date and time
2. A month earlier than the current date and time.
3. A year later than the current date and time.

Task by: Jewel Alam
*/ 

CREATE TEMPORARY TABLE temp_date AS
SELECT 
    NOW() AS curr_dateandtime,
    DATE_SUB(NOW(), INTERVAL 1 MONTH) AS a_month_earlier,
    DATE_ADD(NOW(), INTERVAL 1 YEAR) AS a_year_later;
    select * from temp_date;