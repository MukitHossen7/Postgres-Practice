CREATE OR REPLACE PROCEDURE deleteEmployeeId(id INT)
LANGUAGE plpgsql
AS
$$
  BEGIN
  DELETE FROM employees WHERE employee_id = id;
  END;
$$;

CALL deleteEmployeeId (29);

CREATE OR REPLACE PROCEDURE updateEmployeeId(id INT)
LANGUAGE plpgsql
AS
$$
  BEGIN
   UPDATE employees SET employee_name = 'Mukit Hossen' WHERE employee_id = id;
  END;
$$;

CALL updateEmployeeId (10)

SELECT * FROM employees