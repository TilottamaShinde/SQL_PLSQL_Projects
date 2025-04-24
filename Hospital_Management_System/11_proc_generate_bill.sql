DELIMITER $$ 

CREATE PROCEDURE generate_bill (
	IN in_appointment_id INT,
    IN in_amount DECIMAL(10,2)
)

BEGIN
	INSERT INTO Billing(Appointment_id, amount, billing_date)
    VALUES (in_appointment_id, in_amount, CURDATE());
END $$

DELIMITER ;


-- CALL generate_bill (101, 2500.00);
