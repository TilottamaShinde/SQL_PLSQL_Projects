ALTER TABLE Doctors ADD specialty VARCHAR(100);
ALTER TABLE Doctors ADD address VARCHAR(255);

INSERT INTO Doctors (name, specialty, contact, address) VALUES
('Dr. Rajiv Mehta', 'Cardiology', '9988776655', '101 Heart Care Ave, Pune'),
('Dr. Sneha Kulkarni', 'Neurology', '9876543211', '202 Brain Street, Mumbai'),
('Dr. Anil Deshmukh', 'Orthopedics', '9123456780', '303 Bone Lane, Nagpur'),
('Dr. Pooja Iyer', 'Pediatrics', '9090909090', '404 Child Health Blvd, Bangalore'),
('Dr. Karan Malhotra', 'Dermatology', '9001122334', '505 Skin Square, Delhi'),
('Dr. Neha Patil', 'Gynecology', '9988112277', '606 Women Wellness Rd, Pune'),
('Dr. Arvind Rao', 'ENT', '9777666555', '707 Ear Nose Throat St, Hyderabad'),
('Dr. Divya Joshi', 'Psychiatry', '9555443322', '808 Mind Health Circle, Chennai'),
('Dr. Vikram Shetty', 'General Surgery', '9444332211', '909 Surgeon Court, Kochi'),
('Dr. Rina Das', 'Oncology', '9333222111', '1010 Cancer Care Way, Kolkata');
