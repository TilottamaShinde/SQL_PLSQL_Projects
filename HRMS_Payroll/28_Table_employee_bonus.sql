-- Overtime/Bonus Tracking
CREATE TABLE employee_bonus (
	bonus_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT,
    bonus_month DATE,
    amount DECIMAL(10,2),
    reason VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);