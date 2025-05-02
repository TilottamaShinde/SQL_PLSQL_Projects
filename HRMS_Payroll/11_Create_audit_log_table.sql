CREATE TABLE audit_log (
	log_id INT PRIMARY KEY AUTO_INCREMENT,
    action_taken VARCHAR(100) NOT NULL,
    table_name VARCHAR(100) NOT NULL,
    record_id INT NOT NULL,
    changed_by INT,
    change_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    old_value TEXT,
    new_value TEXT,
    
    FOREIGN KEY (changed_by) REFERENCES system_users(user_id)
);