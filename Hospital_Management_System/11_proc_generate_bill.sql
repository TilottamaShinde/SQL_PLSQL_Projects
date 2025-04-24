DROP PROCEDURE IF EXISTS generate_bill;


DELIMITER $$ 

CREATE PROCEDURE generate_bill (
	IN in_appointment_id INT,
    IN in_amount DECIMAL(10,2)
)

BEGIN
	DECLARE bill_date DATE;
    SET bill_date = CURDATE();
    
    -- insert into billing table
	INSERT INTO Billing(Appointment_id, amount, billing_date)
    VALUES (in_appointment_id, in_amount, CURDATE());
    
    -- insert into billing_log table
    INSERT INTO billing_log (appointment_id, amount, billing_date)
    VALUES (in_appointment_id, in_amount, bill_date);
    
END $$

DELIMITER ;


 -- CALL generate_bill (102, 2900.00);
