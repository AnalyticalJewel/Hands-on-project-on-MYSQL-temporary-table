/* Create a temporary table called dates containing the following three columns:

- one displaying the current date and time,

- another one displaying 2 months earlier than the current date and time, and a

- third column displaying 2 years later than the current date and time.
Task by: Jewel Alam
*/ 

CREATE TEMPORARY TABLE dates AS
SELECT 
    NOW() AS curr_dateandtime,
    DATE_SUB(NOW(), INTERVAL 2 MONTH) AS 2_month_earlier,
    DATE_ADD(NOW(), INTERVAL 2 YEAR) AS 2_year_later;
    select * from temp_date;