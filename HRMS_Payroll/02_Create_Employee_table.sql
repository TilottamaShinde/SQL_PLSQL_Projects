-- Employee table
CREATE TABLE employee(
	emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender ENUM('Male','Female','Other') NOT NULL,
	dob DATE, 		-- date of birth
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    address TEXT,
    department_id INT,
    designation VARCHAR(100),
    doj DATE, 			-- date of joining 
    bank_account_no VARCHAR(30),
    ifsc_code VARCHAR(15),
    pan_number VARCHAR(10),
    aadhaar_number VARCHAR(12),
    status ENUM('Active','Resigned','On Leave') DEFAULT 'Active',
    last_working_day DATE,
    exit_reason VARCHAR(255),
    notice_period_days INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);