-- Active: 1709175476422@@127.0.0.1@5432@ph
CREATE TABLE student (
  student_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  age INT,
  grade CHAR(2),
  course VARCHAR(50),
  email VARCHAR(100),
  dob DATE,
  blood_group VARCHAR(5),
  country VARCHAR(50)
)


INSERT INTO student (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('John', 'Doe', 18, 'A+', 'Mathematics', 'john.doe@example.com', '2006-05-15', 'O+', 'United States'),
('Jane', 'Smith', 17, 'B-', 'Science', 'jane.smith@example.com', '2007-02-28', 'AB-', 'Canada'),
('Michael', 'Johnson', 16, 'A', 'History', 'michael.johnson@example.com', '2008-08-10', 'B+', 'United Kingdom'),
('Emily', 'Brown', 18, 'A-', 'English', 'emily.brown@example.com', '2006-11-20', 'A-', 'Australia'),
('Daniel', 'Martinez', 17, 'B+', 'Physics', 'daniel.martinez@example.com', '2007-07-03', 'O-', 'Mexico'),
('Olivia', 'Garcia', 16, 'B', 'Chemistry', 'olivia.garcia@example.com', '2008-04-25', 'AB+', 'Spain');




SELECT * from student WHERE country = 'United States';

SELECT upper(first_name) as first_name_in_capital, *  from student;


SELECT concat(first_name, ' ', last_name) as full_name, * from student;


SELECT avg(age) from student;


SELECT max(length(first_name)) from student;


SELECT * from student WHERE country IN('United States','Canada');

ALTER TABLE  student RENAME to students;

SELECT * from students;


SELECT * from students
 WHERE first_name ILIKE '%HN';


