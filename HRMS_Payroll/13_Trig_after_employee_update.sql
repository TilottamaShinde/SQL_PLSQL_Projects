DELIMITER $$

CREATE TRIGGER after_employee_update
AFTER UPDATE ON employee
FOR EACH ROW
BEGIN
	INSERT INTO audit_log(action_taken, table_name, record_id, changed_by, change_timestamp, old_value, new_value)
    VALUES
    ('UPDATE', 'employee', OLD.emp_id, 1, NOW(), CONCAT('First Name: ', OLD.first_name, ', Last Name: ', OLD.last_name), CONCAT('First Name: ', NEW.first_name, ', Last Name: ', NEW.last_name));
END $$

DELIMITER ;