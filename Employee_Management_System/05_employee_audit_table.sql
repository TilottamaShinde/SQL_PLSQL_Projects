CREATE TABLE employee_audit (
	audit_id INT AUTO_INCREMENT PRIMARY KEY,
	emp_id INT,
	emp_name VARCHAR(100),
    status ENUM('Present','Absent','On Leave'),
    action_type VARCHAR(100),
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);