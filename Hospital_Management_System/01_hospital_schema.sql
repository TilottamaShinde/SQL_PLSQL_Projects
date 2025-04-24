CREATE DATABASE IF NOT EXISTS hospital_db;
USE hospital_db;

CREATE TABLE Patients (
	patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender ENUM('Male','Female','Other'),
    contact VARCHAR(15),
    address TEXT,
    date_registered DATE NOT NULL DEFAULT (CURRENT_DATE)
);

CREATE TABLE Doctors (
	doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    contact VARCHAR(15),
    available_from TIME,
    available_to TIME
);

CREATE TABLE Appointments (
	appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status ENUM('Scheduled','Completed','Cancelled') DEFAULT 'Scheduled',
    FOREIGN KEY(patient_id) REFERENCEs Patients(patient_id),
    FOREIGN KEY(doctor_id) REFERENCES Doctors(doctor_id)
);

CREATE TABLE Billing (
	bill_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT,
    amount DECIMAL(10,2),
    billing_date DATETIME NOT NULL  DEFAULT(CURRENT_TIMESTAMP),
    payment_mode ENUM('Cash','Card','Online'),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

CREATE TABLE Pharmacy (
	medicine_id INT AUTO_INCREMENT PRIMARY KEY,
    medicine_name VARCHAR(100),
    quantity INT,
    price DECIMAL(8,2),
    expiry_date DATE
);

CREATE TABLE Billing_log(
	log_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT,
    amount DECIMAL(10,2),
    billing_date DATE,
    log_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Appointment_log (
	log_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT,
    log_message VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
