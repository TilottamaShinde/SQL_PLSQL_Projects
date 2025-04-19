DELIMITER $$

CREATE PROCEDURE update_employee_status(IN emp_id INT, IN new_status VARCHAR(50))
BEGIN
	UPDATE employees
    SET status = new_status
    WHERE emp_id = emp_id;
    
    INSERT INTO employee_audit(emp_id, emp_name, status, action_type)
    SELECT emp_id, emp_name, new_status, 'UPDATE'
    FROM employees
    WHERE emp_id = emp_id;
END$$

DELIMITER ;