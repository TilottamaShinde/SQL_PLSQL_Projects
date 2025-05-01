CREATE TABLE employee_attendace (
	attendace_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT NOT NULL,
    attendace_date DATE NOT NULL,
    status ENUM('Present', 'Absent', 'Half-day', 'Leave', 'WFH', 'Holiday', 'Weekend', 'On Duty') NOT NULL,
    check_in_time TIME,
    check_out_time TIME,
    remarks TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
    UNIQUE(emp_id, attendace_date),
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);