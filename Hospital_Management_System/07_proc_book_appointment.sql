DELIMITER $$

CREATE PROCEDURE book_appointment (
	IN in_patient_id INT,
    IN in_doctor_id INT,
    IN in_appoitment_date DATE
)
BEGIN
	INSERT INTO Appointments(patient_id, doctor_id, appointment_date, status)
    VALUES(in_patient_id, in_doctor_id, in_appointment_date, 'Scheduled');
END $$

DELIMITER ;

-- CALL book_appointment(101, 5, '2025-04-25');
