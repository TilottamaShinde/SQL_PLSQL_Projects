-- procedure to add new employee in employees table
DELIMITER $$

CREATE PROCEDURE add_employee (
    IN p_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_hire_date DATE,
    IN p_dept_id INT
)
BEGIN
    INSERT INTO employees (emp_name, email, hire_date, dept_id)
    VALUES (p_name, p_email, p_hire_date, p_dept_id);
    
    SELECT CONCAT('New employee ', p_name, ' added successfully!') AS message;
END $$

DELIMITER ;
