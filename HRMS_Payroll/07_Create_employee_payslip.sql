CREATE TABLE employee_payslip (
	payslip_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT NOT NULL,
    pay_month DATE NOT NULL,
    basic_salary DECIMAL(10,2) NOT NULL,
    hra DECIMAL(10,2) DEFAULT 0.00,
    special_allowances DECIMAL(10,2) DEFAULT 0.00,
    other_allowances DECIMAL(10,2) DEFAULT 0.00,
    total_earnings DECIMAL(10,2) GENERATED ALWAYS AS (
		basic_salary + hra + special_allowances + other_allowances) STORED,
	total_deductions DECIMAL(10,2) NOT NULL,
    net_pay DECIMAL(10,2) GENERATED ALWAYS AS (total_earnings - total_deductions) STORED,
    status ENUM('Draft', 'Finalized', 'Paid') DEFAULT 'Draft',
    generated_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    remarks TEXT,
    UNIQUE(emp_id, pay_month),
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)	
);