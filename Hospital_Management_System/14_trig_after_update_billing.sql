-- Trigger to log billing update

DELIMITER $$

CREATE TRIGGER after_update_billing
AFTER UPDATE ON Billing
FOR EACH ROW
BEGIN
	INSERT INTO Billing_log(appointment_id, amount, billing_date)
    VALUES(NEW.appointment_id, NEW.amount, NEW.billing_date);
END $$

DELIMITER ;