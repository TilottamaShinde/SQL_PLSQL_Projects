CREATE TABLE employee_deduction (
	deduction_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT NOT NULL,
    deduction_month DATE NOT NULL,
    deduction_type VARCHAR(100) NOT NULL,
    description TEXT,
    amount DECIMAL(10,2) NOT NULL CHECK(amount > 0),
    is_recurring BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);