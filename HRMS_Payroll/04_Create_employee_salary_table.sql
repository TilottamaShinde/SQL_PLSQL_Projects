CREATE TABLE employee_salary (
	salary_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT NOT NULL,
    effective_from DATE NOT NULL,
    basic_salary DECIMAL(10,2) NOT NULL,
    hra DECIMAL(10,2) DEFAULT 0.00,
    special_allowance DECIMAL(10,2) DEFAULT 0.00,
    other_allowance DECIMAL(10,2) DEFAULT 0.00,
    pf_deduction DECIMAL(10,2) DEFAULT 0.00,
    professional_tax DECIMAL(10,2) DEFAULT 0.00,
    income_tax DECIMAL(10,2) DEFAULT 0.00,
    gross_salary DECIMAL(10,2) GENERATED ALWAYS AS (
			basic_salary + hra + special_allowance + other_allowance)STORED,
	net_salary DECIMAL(10,2) GENERATED ALWAYS AS (
			gross_salary - pf_deduction - professional_tax - income_tax) STORED,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)    
);
