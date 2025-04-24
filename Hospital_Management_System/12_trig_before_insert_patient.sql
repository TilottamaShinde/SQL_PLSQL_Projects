-- Trigger to Format Patient Name 
DELIMITER $$
CREATE TRIGGER before_insert_patient
BEFORE INSERT ON Patients
FOR EACH ROW
BEGIN
	SET NEW.name = CONCAT(UPPER(LEFT(NEW.name, 1)), LOWER(SUBSTRING(NEW.name,2)));
END $$

DELIMITER ;