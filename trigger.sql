-- Active: 1709175476422@@127.0.0.1@5432@ph@public


CREATE TABLE my_users 
(
  id SERIAL PRIMARY KEY,
  user_name VARCHAR(50),
  email VARCHAR(100)
);


DROP Table my_users;

INSERT INTO my_users (user_name, email) VALUES ('miraj1','miraj@gmail.com');

SELECT * FROM my_users;

CREATE TABLE deleted_user_audit
(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
);


CREATE or REPLACE FUNCTION save_deleted_user_fn()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
BEGIN
 INSERT INTO deleted_user_audit VALUES (OLD.user_name, now());
 RETURN OLD;
END
$$

CREATE TRIGGER save_deleted_user_trigger
BEFORE DELETE
on my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user_fn();

SELECT * from my_users;
SELECT * from deleted_user_audit;

DELETE from my_users WHERE id = 1;