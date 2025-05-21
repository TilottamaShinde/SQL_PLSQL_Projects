-- View for audit trail 
CREATE VIEW audit_trail_viewer AS
SELECT
	al.log_id,
    al.table_name,
    al.record_id,
    al.action_taken,
    CONCAT(e.first_name, ' ', e.last_name) AS changed_by_user,
    al.change_timestamp,
    al.old_value,
    al.new_value
FROM
	audit_log al
LEFT JOIN
	employee e ON al.changed_by = e.emp_id
ORDER BY
	al.change_timestamp DESC;
    
-- Example usage
SELECT * FROM audit_trail_viewer;