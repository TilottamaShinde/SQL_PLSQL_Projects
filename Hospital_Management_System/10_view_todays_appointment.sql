CREATE OR REPLACE VIEW view_todays_appointment AS 
SELECT 
	a.appointment_id, 
    p.name AS patient_name,
    p.name AS doctor_name,
    a.appointment_date,
    a.status
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
WHERE a.appointment_date = CURDATE();


# SELECT * FROM view_todays_appointment;


