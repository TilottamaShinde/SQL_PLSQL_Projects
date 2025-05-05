DELIMITER $$

CREATE PROCEDURE AddEmployee (
	IN p_first_name VARCHAR(50),
    IN p_last_name VARCHAR(50),
    IN p_gender ENUM('Male', 'Female', 'Other'),
    IN p_dob DATE,
    IN p_email VARCHAR(100),
    IN p_phone VARCHAR(15),
    IN p_address TEXT,
    IN p_department_id INT,
    IN p_designation VARCHAR(100),
    IN p_doj DATE,
    IN p_bank_account_no VARCHAR(30),
    IN p_ifsc_code VARCHAR(15),
    IN p_pan_number VARCHAR(10),
    IN p_aadhaar_number VARCHAR(12),
    IN p_status ENUM('Active', 'Resigned', 'On Leave'),
    IN p_notice_period_days INT,
    IN p_basic_salary DECIMAL(10,2),
    IN p_hra DECIMAL(10,2),
    IN p_special_allownce DECIMAL(10,2),
    IN p_other_allowance DECIMAL(10,2)
)
BEGIN
	INSERT INTO employee(
		first_name, last_name, gender, dob, email, phone, address, department_id,
        designation, doj, bank_account_n0, ifsc_code, pan_number, aadhaar_number, status, notice_period_days
    )
    VALUES (
		p_first_name, p_last_name, p_gender, p_dob, p_email, p_phone, p_address, p_department_id,
        p_designation, p_doj, p_bank_account_no, p_ifsc_code, p_pan_number, p_aadhaar_number, p_status, p_notice_period_days
    );
    -- Get the employee id od newly inserted employee
	SET @emp_id = LAST_INSERTED_ID();
    
    -- Insert into employee_salary table
    INSERT INTO employee_salary (
		emp_id, effective_from, basic_salary, hra, special_allownce, other_allowance,
        pf_deduction, professional_tax, income_tax, gross_salary, net_salary
    )
    VALUES(
		@emp_id, p_doj, p_basic_salary, p_hra, p_special_allowance, p_other_allowance, 
        0.00, 0.00, 0.00, p_basic_salary + p_hra + p_special_allowance + p_other_allowance,
        p_basic_salary + p_hra + p_special_allowance + p_other_allowance
    );
    
    -- Insert into Employee_payslip table
    INSERT INTO employee_payslip (
		emp_id, pay_month, basic_salary, hra, special_allowance, other_allowance,
        total_earnings, total_deductions, net_pay, status, generated_on, remarks
    )
    VALUES(
		@emp_id, CURRENT_DATE, p_basic_salary, p_hra, p_special_allowance, p_other_allowance,
        p_basic_salary + p_hra + p_special_allowaces + p_other_allowance , 0.00,
        p_basic_salary + p_hra + p_special_allowance + p_other_allowance, 'Draft', CURRENT_TIMESTAMP, 'Initial Payslip'
    );
    
    -- Insert into Audit_Log table
    INSERT INTO audit_log (
			action_taken, table_name, record_id, changed_by, change_timestamp, old_value, new_value
		)
        VALUES (
			'INSERT', 'employee', @emp_id, 1, NOW(), NULL, CONCAT('First Name : ', p_first_name, ', Last Name : ', p_last_name)
        );
	END $$

DELIMITER ;
    
    
    
    
    
    
    
    
    
