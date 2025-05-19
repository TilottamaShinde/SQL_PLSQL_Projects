-- View For Active Employee Salary Summary 
CREATE VIEW active_employee_salary_summary AS
SELECT
	e.emp_id,
    CONCAT(e.first_name, ' ',e.last_name) AS Employee_name,
    es.effective_from,
    es.basic_salary,
    es.hra,
    es.special_allowance,
	es.other_allowance,
    es.gross_salary,
    es.net_salary
    FROM 
		employee e
	JOIN 
		employee_salary es ON e.emp_id = es.emp_id
	WHERE 
		e.status = 'Active'
	ORDER BY
		es.effective_from DESC;
        
	
-- SELECT * FROM active_employee_salary_summary;