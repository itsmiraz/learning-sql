-- Active: 1709175476422@@127.0.0.1@5432@ph


CREATE View depth_avg_salary
AS 
SELECT department_name, avg(salary) From employees
 JOIN departments USING (department_id)
 GROUP BY department_name;


SELECT * FROM depth_avg_salary;

SELECT department_name, avg(salary) From employees
 JOIN departments USING (department_id)
 GROUP BY department_name
;