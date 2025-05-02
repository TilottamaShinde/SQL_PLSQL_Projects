CREATE TABLE employee_loans (
	loan_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT NOT NULL,
    loan_amount DECIMAL(10,2) NOT NULL,
    emi_amount DECIMAL(10,2) NOT NULL,
    total_installments INT NOT NULL,
    installments_paid INT DEFAULT 0,
    loan_start_date DATE NOT NULL,
    remarks TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);