-- Active: 1709175476422@@127.0.0.1@5432@ph

SELECT extract( year from dob) , count(*) from students
 GROUP BY dob;