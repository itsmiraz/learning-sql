-- Active: 1709175476422@@127.0.0.1@5432@ph
SHOW timezone;


CREATE Table timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);


INSERT INTO timeZ VALUES('2024-01-12 10:45:00','2024-01-12 10:45:00');

SELECT * from timeZ;

SELECT to_char(now(),'dd-mm-yyyy');


SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT age(CURRENT_DATE, '2003-09-22');

SELECT *, age(CURRENT_DATE,dob) as totalAge from students;