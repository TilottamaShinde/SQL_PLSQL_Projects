CREATE OR REPLACE VIEW view_appointment_billing AS
SELECT
	a.appointment_id,
    p.name AS patient_name,
    d.name AS doctor_name,
    a.appointment_date,
    a.status,
    b.amount AS billed_amount,
    b.billing_date
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
LEFT JOIN Billing b ON a.appointment_id = b.appointment_id;

#SELECT * FROM view_appointment_billing;