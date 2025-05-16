-- 
CREATE VIEW Monthly_Payroll_Report AS
SELECT 
	ep.payslip_id,
    ep.emp_id,
    CONCAT(e.first_name, ' ', e.last_name) AS Employee_name,
    ep.pay_month,
    ep.basic_salary,
    ep.hra,
    ep.special_allowances,
    ep.other_allowances,
    ep.total_earnings,
    ep.total_deductions,
    ep.net_pay,
    ep.status,
    ep.generated_on
FROM
	employee_payslip ep
JOIN 
	employee e
    ON ep.emp_id = e.emp_id
ORDER BY
	ep.pay_month DESC, employee_name;

-- Example Usage
-- select * from Monthly_Payroll_Report;
