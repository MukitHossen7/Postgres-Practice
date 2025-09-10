SELECT * FROM employees

CREATE TABLE employee_log (
    id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50),
    action VARCHAR(25),
    action_time TIMESTAMP DEFAULT now()
)

CREATE OR REPLACE FUNCTION log_employee_deletion()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
BEGIN
  INSERT INTO employee_log(emp_name,action)VALUES(OLD.employee_name,'DELETE');
  RETURN OLD;
  END;
$$;

CREATE TRIGGER save_employee_delete
AFTER DELETE ON employees FOR EACH ROW
EXECUTE FUNCTION log_employee_deletion ()


CREATE OR REPLACE PROCEDURE deleteEmployeeId(id INT)
LANGUAGE plpgsql
AS
$$
  BEGIN
  DELETE FROM employees WHERE employee_id = id;
  END;
$$;

CALL deleteEmployeeId (28);

SELECT * FROM employee_log