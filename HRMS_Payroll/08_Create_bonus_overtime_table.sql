CREATE TABLE bonus_overtime (
	record_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT NOT NULL,
    entry_date DATE NOT NULL,
    bonus_amount DECIMAL(10,2) DEFAULT 0.00,
    overtime_hours DECIMAL(5,2) DEFAULT 0.00,
    overtime_pay DECIMAL(10,2) DEFAULT 0.00,
    remarks TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY  (emp_id) REFERENCES employee(emp_id)
);
