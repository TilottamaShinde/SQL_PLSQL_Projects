-- procedure to auto increment the number of installments paid for a specific loan id 

-- procedure to auto increment the number of installments paid for a specific loan id 

DELIMITER //

CREATE PROCEDURE update_loan_installment(
	IN p_loan_id INT
)
BEGIN
	UPDATE employee_loans
    SET installments_paid = installments_paid + 1
    WHERE loan_id = p_loan_id AND is_active = 1;
    
    -- if all installments paid then mark as inactive
    UPDATE employee_loans
    SET is_active = 0
    WHERE loan_id = p_loan_id AND installments_paid >= total_installments;
    
END //
DELIMITER ;

-- Example usage

-- CALL update_loan_installment(1);
