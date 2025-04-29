-- Departments table

CREATE TABLE departments (
	department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL UNIQUE,
    location VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    
);	

-- after creating employee table execute following script
ALTER TABLE departments 
ADD COLUMN manager_id INT;

ALTER TABLE departments 
ADD CONSTRAINT fk_manager
FOREIGN KEY (manager_id) REFERENCES employee(emp_id);