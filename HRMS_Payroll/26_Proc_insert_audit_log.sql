DELIMITER //

CREATE PROCEDURE insert_audit_log(
	IN p_action_taken VARCHAR(100),
    IN p_table_name VARCHAR(100),
    IN p_record_id INT,
    IN p_changed_by INT,
    IN p_old_value TEXT,
    IN p_new_value TEXT
)
BEGIN
	INSERT INTO audit_log (
		action_taken, table_name, record_id, changed_by,
        change_timestamp, old_value, new_value
    )
    VALUES (
		p_action_taken, p_table_name, p_record_id, p_changed_by,
        NOW(), p_old_value, p_new_value
    );
END //

DELIMITER ;S
