CREATE VIEW employee_loan_status AS
SELECT
	el.loan_id,
    el.emp_id,
    CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
    el.loan_amount,
    el.total_installments,
    el.installments_paid,
    (el.total_installments - el.installments_paid) AS installments_remaining,
    el.loan_start_date,
    el.remarks,
	CASE
		WHEN el.is_active = 1 THEN 'Active'
		ELSE 'Closed'
	END AS loan_status,
	el.created_at
FROM
	employee_loans el
JOIN 
	employee e
	ON el.emp_id = e.emp_id
ORDER BY 
	el.created_at DESC;
    
-- Sample usage    
-- SELECT * FROM employee_loan_status;