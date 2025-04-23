CREATE OR REPLACE VIEW view_billing_summary AS
SELECT 
	billing_date,
    COUNT(*) AS total_bills,
    sum(amount) as total_amount
FROM billing
GROUP BY billing_date
ORDER BY billing_date DESC;

# SELECT * FROM view_billing_summary;