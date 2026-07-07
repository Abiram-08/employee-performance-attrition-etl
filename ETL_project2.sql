CREATE DATABASE HR_DATASET;
USE HR_DATASET;
select * from employee_hr;
select monthlyincome from employee_hr;
-------------------------------------------------------
#list out the salary categoty
SELECT *,
CASE
    WHEN monthlyincome < 5000 then 'Low'
    WHEN monthlyincome BETWEEN 5000 AND 10000 THEN 'MEDIUM'
    ELSE 'HIGH'
END AS Salary_category
from employee_hr;
---------------------------------------------------------------------------
#list out the age categories
SELECT *,
CASE
     WHEN Age<30 THEN 'Young'
     WHEN Age BETWEEN 30 AND 45 THEN 'Middle'
     ELSE 'High'
END AS Age_group
from employee_hr;
----------------------------------------------------------------------------
#list out the experience categories
SELECT * FROM EMPLOYEE_HR;
SELECT *,
CASE
     WHEN totalworkingyears < 5 THEN 'Beginner'
     WHEN totalworkingyears BETWEEN 5 AND 10 THEN 'Intermediate'
     ELSE 'Experienced'
END AS Experience_level
FROM Employee_hr;
-----------------------------------------------------------------------------------------------
#list out the performace categories
SELECT *,
CASE
     WHEN performancerating = 1 THEN 'Poor'
     WHEN PerformanceRating = 2 THEN 'Average'
     WHEN PerformanceRating = 3 THEN 'Good'
     ELSE 'GOOD'
END AS Performace_category
FROM employee_hr;
SELECT PerformanceRating FROM employee_hr where PerformanceRating IN (1,2,3,4,5);
--------------------------------------------------------------------------------------------------
ALTER TABLE Employee_hr
ADD COLUMN Salary_category varchar(50);
-----------------------------------------------------------------------------------------------
show columns from employee_hr;
set sql_safe_updates=0;
--------------------------------------------------------------------------------------------------
update employee_hr
set Salary_category = 
CASE
    WHEN monthlyincome < 5000 then 'Low'
    WHEN monthlyincome BETWEEN 5000 AND 10000 THEN 'MEDIUM'
    ELSE 'HIGH'
END;
select Salary_category from employee_hr;
---------------------------------------------------------------------------------------------------
ALTER TABLE Employee_hr
ADD COLUMN Age_category varchar(50);
---------------------------------------------------------------------------------------------------
UPDATE employee_hr SET age_category =
CASE
     WHEN Age<30 THEN 'Young'
     WHEN Age BETWEEN 30 AND 45 THEN 'Middle'
     ELSE 'High'
END;
select age,age_category from employee_hr;
----------------------------------------------------------------------------------------------------
ALTER TABLE employee_hr ADD COLUMN experience_level varchar(50);
UPDATE employee_hr SET Experience_level=
CASE
     WHEN totalworkingyears < 5 THEN 'Beginner'
     WHEN totalworkingyears BETWEEN 5 AND 10 THEN 'Intermediate'
     ELSE 'Experienced'
END;
select totalworkingyears,experience_level from employee_hr;
----------------------------------------------------------------------------------------------------
ALTER TABLE employee_hr ADD COLUMN Performance_level varchar(50);
UPDATE employee_hr SET Performance_level =
CASE
     WHEN performancerating = 1 THEN 'Poor'
     WHEN PerformanceRating = 2 THEN 'Average'
     WHEN PerformanceRating = 3 THEN 'Good'
     ELSE 'GOOD'
END;
----------------------------------------------------------------------------------------------------
SELECT salary_category,age_category,experience_level,performance_level from employee_hr;
select * from employee_hr;
------------------------------------------------------------------------------------------------------
# NOW START WITH EDA PROCESSING:
SELECT MAX(monthlyincome) from employee_hr;
select * from employee_hr;
SELECT jobrole,count(jobrole),avg(monthlyincome) from employee_hr group by jobrole;
---------------------------------------------------------------------------------------------------------
SELECT jobrole,avg(monthlyincome) as Highest_avg_Salary FROM Employee_hr group by jobrole order by Highest_avg_salary desc limit 1;
------------------------------------------------------------------------------------------------------------
SELECT Attrition,count(*) as employee_count from employee_hr group by attrition;
SELECT
ROUND(
    (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0) / COUNT(*),
    2
) AS Attrition_Rate_Percentage
FROM employee_hr;
select * from employee_hr;
-----------------------------------------------------------------------------------------------------------------
SELECT yearssincelastpromotion,count(*) as Employee_Count from employee_hr group by yearssincelastpromotion order by employee_count;
---------------------------------------------------------------------------------------------------------------
SELECT  salary_category,count(*) as Employee_Count from employee_hr group by salary_category;
----------------------------------------------------------------------------------------------------------------
SELECT experience_level,round(avg(monthlyincome)) as Average_salary from employee_hr group by experience_level;
------------------------------------------------------------------------------------------------------------------
SELECT Gender,
       COUNT(*) AS Employee_Count
FROM employee_hr
GROUP BY Gender;
-------------------------------------------------------------------------------------------------------------------
SELECT Gender,
       COUNT(*) AS Employee_Count,
       ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM employee_hr), 2) AS Percentage
FROM employee_hr
GROUP BY Gender;
-----------------------------------------------------------------------------------------------------------------------
SELECT performance_level, count(*) as Employee_count from employee_hr group by performance_level;
----------------------------------------------------------------------------------------------------------------------
select * from employee_hr;



