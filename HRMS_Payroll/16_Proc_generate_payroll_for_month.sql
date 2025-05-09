-- Procedure to generate the monthly payroll
DELIMITER $$

CREATE PROCEDURE generate_payroll_for_month(IN p_pay_month DATE)
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
        
        -- insert payslip for each employee
        INSERT INTO employee_payslip (
			emp_id, pay_month, basic_salary, hra, special_allownces, other_allowance,
            total_earnings, total_deductions, net_pay, status, generated_on, remarks
        )
        SELECT 
			es.emp_id,
            p_pay_month,
            es.basic_salary,
            es.hra,
            es.special_allowances,
            es.other_allowance,
            (es.basic_salary + es.hra + es.special_allowances + es.other_allowance) AS total_earnings,
            (es.pf_deduction + es.professional_tax + es.income_tax + IFNULL(SUM(ed.amount),0)) AS total_deduction,
            ((es.basic_salary + es.hra + es.special_allowance + es.other_allowance) - (es.pf_deduction + es.professional_tax +
            IFNULL(SUM(ed.amount), 0))) AS net_pay, 'Draft', NOW(), 'Auto generated payslip'
            FROM 	
				employee_salary es
			LEFT JOIN employee_deduction ed
				ON es.emp_id = ed.emp_id AND MONTH(ed.deduction_month) = MONTH(p_pay_month)
                AND YEAR(ed.deduction_month) = YEAR(p_pay_month)
			WHERE
				es.emp_id = v_emp_id
			ORDER BY es.effective_from DESC 
            LIMIT 1;
		END LOOP;
        CLOSE cur;
	END $$

DELIMITER ;



-- Usage
-- CALL generate_payroll_for_month('2025-05-01');
