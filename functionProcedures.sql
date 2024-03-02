

SELECT * from employees;

CREATE FUNCTION emp_count()
RETURNS INT
LANGUAGE SQL
as 
$$
SELECT count(*) from employees; 
$$;

CREATE or REPLACE FUNCTION delete_emp()
RETURNS void
LANGUAGE SQL
as 
$$
DELETE FROM employees WHERE employee_id = 30; 
$$;



CREATE or REPLACE FUNCTION delete_emp_by_id(p_emp_id INT)
RETURNS void
LANGUAGE SQL
as 
$$
DELETE FROM employees WHERE employee_id = p_emp_id; 
$$;


SELECT delete_emp_by_id(29);




CREATE Procedure remove_emp()
 LANGUAGE plpgsql
 AS
 $$
 BEGIN
  DELETE FROM employees WHERE employee_id = 30; 
 END
 $$

 CALL  remove_emp()