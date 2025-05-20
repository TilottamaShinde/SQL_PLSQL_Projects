-- view for monthly deduction summary
CREATE VIEW monthly_deductions_summary AS
SELECT
	ed.emp_id,
    CONCAT(e.first_name,' ' , e.last_name) AS employee_name,
    DATE_FORMAT(ed.deduction_month, '%Y-%m') AS deduction_month,
    ed.deduction_type,
    SUM(ed.amount) AS total_deduction_amount,
    ed.is_recurring
FROM 	
	employee_deduction ed
JOIN
	employee e ON ed.emp_id = e.emp_id
GROUP BY
	ed.emp_id, ed.deduction_month, ed.deduction_type, ed.is_recurring
ORDER BY
	ed.deduction_month DESC, total_deduction_amount DESC;


-- EXAMPLE USAGE    
-- SELECT * FROM monthly_deductions_summary;

