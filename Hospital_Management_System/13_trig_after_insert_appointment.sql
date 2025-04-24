-- Trigger to log new appointment 
DELIMITER $$

CREATE TRIGGER after_insert_appointment 
AFTER INSERT ON Appointments
FOR EACH ROW 
BEGIN
	INSERT INTO Appointment_log (appointment_id, log_message)
    VALUES (NEW.appointment_id, CONCAT('New appointment booked with Doctor ID', NEW.doctor_id));
END $$

DELIMITER ;