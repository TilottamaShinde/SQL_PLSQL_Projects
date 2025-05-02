CREATE TABLE system_users (
	user_id INT PRIMARY KEY AUTO_INCREMENT, 
    username VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(2555) NOT NULL,
    role ENUM('HR','Admin','Manager') DEFAULT 'HR',
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

