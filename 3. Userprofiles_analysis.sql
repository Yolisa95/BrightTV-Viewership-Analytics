-- Databricks notebook source
--checking the dataset
SELECT *
FROM workspace.bright_tv.userprofiles;

-- checking for duplicates 
SELECT UserID,
 COUNT(*) AS duplicate_count
FROM workspace.bright_tv.userprofiles
GROUP BY UserID
HAVING COUNT(*) > 1;

--checking the size of the data
SELECT COUNT(*) AS number_of_rows,
 COUNT(DISTINCT UserID) AS number_subs
FROM workspace.bright_tv.userprofiles;

-- Are the any rows where userID is NULL
SELECT COUNT(*) AS cnt
FROM workspace.bright_tv.userprofiles
WHERE UserID IS NULL;

SELECT DISTINCT UserID
FROM workspace.bright_tv.userprofiles;

--------------------------------------------------------
-- Gender Checks
--------------------------------------------------------

SELECT DISTINCT gender
FROM workspace.bright_tv.userprofiles;

SELECT COUNT(*)
FROM workspace.bright_tv.userprofiles
WHERE gender = ' ';

SELECT
    COUNT(DISTINCT userid) AS subs,
    CASE
        WHEN gender = ' ' THEN 'None'
        ELSE gender
    END AS Gender
FROM workspace.bright_tv.userprofiles
GROUP BY Gender;

---------------------------------------------------------
-- Race Checks
---------------------------------------------------------

SELECT COUNT(*) AS num_rows
FROM workspace.bright_tv.userprofiles
WHERE Race IS NULL;

SELECT DISTINCT Race
FROM workspace.bright_tv.userprofiles;

SELECT DISTINCT
    CASE
        WHEN Race = 'other' THEN 'None'
        WHEN Race = ' ' THEN 'None'
        ELSE Race
    END AS Race
FROM workspace.bright_tv.userprofiles;

---------------------------------------------------------
-- Province Checks
---------------------------------------------------------

SELECT DISTINCT Province
FROM workspace.bright_tv.userprofiles;

SELECT DISTINCT
    CASE
        WHEN Province = ' ' THEN 'Uncategorized'
        WHEN Province = 'None' THEN 'Uncategorized'
        WHEN Province IS NULL THEN 'Uncategorized'
        ELSE Province
    END AS Region
FROM workspace.bright_tv.userprofiles;

---------------------------------------------------------
-- Age Checks
---------------------------------------------------------

SELECT
    MIN(Age) AS min_age,   -- = 0
    MAX(Age) AS max_age    -- = 114
FROM workspace.bright_tv.userprofiles;

SELECT COUNT(*) AS cnt
FROM workspace.bright_tv.userprofiles
WHERE Age IS NULL;