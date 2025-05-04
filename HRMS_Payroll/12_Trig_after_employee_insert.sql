DELIMITER $$

CREATE TRIGGER after_employee_insert
AFTER INSERT ON employee
FOR EACH ROW
BEGIN
	INSERT INTO audit_log(action_taken, table_name, record_id, changed_by, change_timestamp, old_value, new_value)
    VALUES
    ('INSERT', 'employee', NEW.emp_id, 1, NOW(), NULL, CONCAT('First Name: ', NEW.first_name, ', Last Name: ', NEW.last_name));
END $$

DELIMITER ;
    