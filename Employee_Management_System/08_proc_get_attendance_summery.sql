DELIMITER $$

CREATE PROCEDURE get_attendance_summery(IN emp_id INT)
BEGIN
	SELECT 
		emp_id,
        emp_name,
        COUNT(a.attendance_id) AS total_attendace,
        SUM(CASE WHEN a.status = 'Present' THEN 1 ELSE 0 END) AS present_count,
        SUM(CASE WHEN a.status = 'Absent' THEN 1 ELSE 0 END) AS absent_count
	FROM employees e
    JOIN attendence a ON e.emp_id = a.emp_id
    WHERE e.emp_id =  emp_id 
    GROUP BY e.emp_id, e.emp_name;
END$$

DELIMITER ;
