DELIMITER $$

CREATE TRIGGER after_employee_insert
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
	INSERT INTO employee_audit (emp_id, emp_name, status, action_type)
    VALUES(NEW.emp_id, NEW.emp_name, 'Active', 'INSERT');
END$$

DELIMITER ;