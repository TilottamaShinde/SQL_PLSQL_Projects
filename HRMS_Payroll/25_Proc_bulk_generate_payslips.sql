-- procedure to bulk generate payslips for all active employees

DELIMITER //
CREATE PROCEDURE bulk_generate_payslips(
	IN p_pay_month DATE
)
BEGIN
	DECLARE done INT DEFAULT FALSE;
    DECLARE v_emp_id INT;
    
    DECLARE cur CURSOR FOR
		SELECT emp_id FROM employee WHERE status = 'Active';
        
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN cur;
    
    read_loop: LOOP
		FETCH cur INTO v_emp_id;
        IF done THEN
			LEAVE read_loop;
		END IF;
        
        CALL generate_employee_payslip(v_emp_id, p_pay_month);
	END LOOP;
    
    CLOSE cur;
END //
DELIMITER ;

-- Example Usage
-- CALL bulk_generate_payslips('2025-05-01');
