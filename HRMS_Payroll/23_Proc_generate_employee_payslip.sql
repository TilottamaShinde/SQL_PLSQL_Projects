-- 
DROP PROCEDURE generate_employee_payslip;

DELIMITER //
CREATE PROCEDURE generate_employee_payslip(
	IN p_emp_id INT,
    IN p_pay_month DATE
)
BEGIN
	DECLARE v_basic DECIMAL(10,2);
    DECLARE v_hra DECIMAL(10,2);
    DECLARE v_special DECIMAL(10,2);
    DECLARE v_other DECIMAL(10,2);
    DECLARE v_pf DECIMAL(10,2);
    DECLARE v_pt DECIMAL(10,2);
    DECLARE v_it DECIMAL(10,2);
    DECLARE v_total_earnings DECIMAL(10,2);
    DECLARE v_total_deductions DECIMAL(10,2);
    DECLARE v_net_pay DECIMAL(10,2);
    
    -- Get latest salary details
    SELECT basic_salary, hra, special_allowance, other_allowance, pf_deduction, professional_tax, income_tax
    INTO v_basic, v_hra, v_special, v_other, v_pf, v_pt, v_it
    FROM employee_salary
    WHERE emp_id = p_emp_id
    ORDER BY effective_from DESC
    LIMIT 1;
    
 --   SET v_total_earnings = v_basic + v_hra + v_special + v_other;
    SET v_total_deductions = v_pf + v_pt + v_it;
 --   SET v_net_pay = v_total_earnings - v_total_deductions;
    IF NOT EXISTS (
		SELECT 1 FROM employee_payslip
        WHERE emp_id = p_emp_id AND pay_month = p_pay_month
        ) THEN 
    -- Insert payslip
		INSERT INTO employee_payslip (
			emp_id, pay_month, basic_salary, hra, special_allowances, other_allowances, 
			total_deductions, status, generated_on, remarks
		)
		VALUES (
			p_emp_id, p_pay_month, v_basic, v_hra, v_special, v_other,
			v_total_deductions,  'Finalized', NOW(), 'Auto-generated'
		);
    END IF;
   END //
   
   DELIMITER ;

    
-- EXAMPLE USAGE    
--  CALL generate_employee_payslip(1, '2025-05-01');
