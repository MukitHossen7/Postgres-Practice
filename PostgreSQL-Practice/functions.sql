CREATE FUNCTION count_employee()
RETURNS INT
LANGUAGE SQL
AS
$$
SELECT COUNT(*) FROM employees
$$

SELECT count_employee ()

SELECT * FROM employees

CREATE FUNCTION delete_emp(id INT)
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees WHERE employee_id = id
$$

SELECT delete_emp (30)