-- Databricks notebook source
USE workspace.bright_tv;

WITH userprofiles AS (
SELECT UserID,
    Province,
    CASE
        WHEN Province=' ' THEN 'Uncategorized'  -- replacing empty space
        WHEN Province='None' THEN 'Uncategorized'  -- replacing empty None
        WHEN Province IS NULL THEN 'Uncategorized'  -- replacing empty NULLS
        ELSE Province
    END AS Region,

 age,
    CASE
        WHEN age = 0 THEN 'Infants'
        WHEN age BETWEEN 1 AND 12 THEN 'Kids'
        WHEN age BETWEEN 13 AND 19 THEN 'Teenager'
        WHEN age BETWEEN 20 AND 35 THEN 'Youth'
        WHEN age BETWEEN 36 AND 50 THEN 'Adult'
        WHEN age BETWEEN 51 AND 65 THEN 'Elder'
        WHEN age >65 THEN 'Pensioner'
    END AS age_groups,

 Email,   
    CASE
        WHEN (email IS NOT NULL ) OR (email=' ') OR (email NOT IN ('None'))THEN 1
        ELSE 0
    END AS email_flag,

 `Social Media Handle`,   
    CASE
        WHEN `Social Media Handle` IS NOT NULL OR `Social Media Handle`=' ' OR `Social Media Handle` NOT IN ('None')THEN 1
    ELSE 0
    END AS sm_flag,
    
    CASE
        WHEN Race='other' THEN 'None'
        WHEN Race=' ' THEN 'None'
        ELSE Race
        END AS Ethnicity,

    CASE
        WHEN gender =' ' THEN 'None'
        ELSE gender
    END AS Gender
FROM userprofiles
),

viewership AS (
SELECT
 COALESCE(UserID0,userid4) AS userid,
 TO_CHAR(RecordDate2, 'yyyyMM') AS month_id,
 TO_DATE(RecordDate2) AS watch_date,
 --TIME(RecordDate2) AS watch_time,
 TO_CHAR(RecordDate2, 'DD') AS day_of_dataset,
 DAYNAME(RecordDate2) AS day_name,
 WEEKDAY(RecordDate2) + 1 AS day_of_week,
    CASE
        WHEN day_name IN ('Sat', 'Sun') THEN 'weekend'
        ELSE 'weekday'
    END AS day_classification,
 MONTHNAME(RecordDate2) AS month_name,
    CASE
        WHEN Channel2 IN ('SawSee','Sawsee') THEN 'SawSee'
        WHEN Channel2 IN ('SuperSport Live Events','Live on SuperSport', 'Supersport Live Events','DStv Events 1') THEN 'Live Events'
        ELSE Channel2
     END AS Tv_channel,
 date_format(RecordDate2, 'HH:mm:ss') AS watch_time,
    CASE
        WHEN watch_time BETWEEN '00:00:00' AND '05:59:59' THEN '01. Midnight'
        WHEN watch_time BETWEEN '06:00:00' AND '11:59:59' THEN '02. Morning'
        WHEN watch_time BETWEEN '12:00:00' AND '16:59:59' THEN '03. Afternoon'
         WHEN watch_time BETWEEN '17:00:00' AND '23:59:59' THEN '04. Evening'
    END AS time_of_day,
 DATE_FORMAT(`Duration 2`, 'HH:mm:ss') AS duration,

-- Duration in seconds
HOUR(`Duration 2`) * 3600
+ MINUTE(`Duration 2`) * 60
+ SECOND(`Duration 2`) AS duration_seconds,

-- Duration in minutes
ROUND(
    (HOUR(`Duration 2`) * 3600
    + MINUTE(`Duration 2`) * 60
    + SECOND(`Duration 2`)) / 60.0, 2
) AS duration_minutes,

-- Duration in hours
ROUND(
    (HOUR(`Duration 2`) * 3600
    + MINUTE(`Duration 2`) * 60
    + SECOND(`Duration 2`)) / 3600.0, 2
) AS duration_hours,

    CASE
        WHEN duration BETWEEN '00:05:00' AND '00:30:00' THEN '01. Low Usage: <30 min'
        WHEN duration BETWEEN '00:30:01' AND '00:59:59' THEN '02. Med Usage: <60 min'
        WHEN duration > '00:59:59' THEN '03. High Usage: >60 min'
        ELSE '04. No Usage'
    END AS screen_time_bucket,
 HOUR(RecordDate2) AS hour_of_day
FROM viewership
)

SELECT Coalesce(A.userid,B.userid) AS sub_id,
 month_id,
 watch_date,
 day_of_dataset,
 day_name,
 day_of_week,
 day_classification,
 month_name,
 Tv_channel,
 time_of_day,
 hour_of_day,
 screen_time_bucket,
 --user_flag,
 duration,
 duration_seconds,
 duration_minutes,
 duration_hours,
 Region,
 age_groups,
 email_flag,
 sm_flag,
 Ethnicity,
 Gender
FROM viewership AS A
LEFT JOIN userprofiles AS B
ON A.userid=B.userid;

--subscriber by gender
-- viewership by month
--viewership by week