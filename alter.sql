-- Active: 1709175476422@@127.0.0.1@5432@ph

SELECT * FROM person;


-- ALTER TABLE person
--  ADD COLUMN email VARCHAR(25) DEFAULT 'test@.com' NOT NULL ;


 INSERT into person VALUES (3,'hasan',22,'new@gmailcom');


 ALTER Table person 
  RENAME COLUMN age to user_age;

 ALTER Table person 
  ADD constraint user_person_email UNIQUE(email);