-- Report for yearly salary summary 
CREATE VIEW yearly_salary_sammary AS
SELECT 
	emp_id,
    YEAR(pay_month) AS year,
    SUM(net_pay) AS total_paid,
    SUM(total_deductions) AS total_deductions
FROM employee_payslip
GROUP BY emp_id, YEAR(pay_month);

-- SELECT * FROM yearly_salary_sammary;
