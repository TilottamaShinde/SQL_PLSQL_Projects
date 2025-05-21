-- pending payslip generation view

CREATE VIEW pending_payslip_generation AS
SELECT
	e.emp_id,
    CONCAT(e.first_name,' ',e.last_name) as Employee_name,
    ep.pay_month,
    ep.status
FROM 
	employee_payslip ep
JOIN 
	employee e 
    ON ep.emp_id = e.emp_id
WHERE 
	ep.status = 'Draft'
ORDER BY 
	ep.pay_month DESC;
    
    -- example usage
SELECT * FROM pending_payslip_generation;