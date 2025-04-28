-- Insert query for Students table 

INSERT INTO Students (first_name, last_name, date_of_birth, gender, email, phone_number, address, enrollment_date, status)
VALUES 
('Aarav', 'Sharma', '2005-06-15', 'Male', 'aarav.sharma@example.com', '9876543210', 'Mumbai, India', '2022-06-01', 'Active'),
('Isha', 'Patel', '2006-09-22', 'Female', 'isha.patel@example.com', '9876543211', 'Ahmedabad, India', '2022-06-05', 'Active'),
('Rohan', 'Verma', '2004-12-30', 'Male', 'rohan.verma@example.com', '9876543212', 'Delhi, India', '2022-06-10', 'Active'),
('Meera', 'Nair', '2005-03-10', 'Female', 'meera.nair@example.com', '9876543213', 'Kochi, India', '2022-06-15', 'Active'),
('Vihaan', 'Deshmukh', '2005-07-18', 'Male', 'vihaan.deshmukh@example.com', '9876543214', 'Pune, India', '2022-06-20', 'Active'),
('Anaya', 'Singh', '2006-01-05', 'Female', 'anaya.singh@example.com', '9876543215', 'Lucknow, India', '2022-06-25', 'Active'),
('Yuvan', 'Reddy', '2005-11-08', 'Male', 'yuvan.reddy@example.com', '9876543216', 'Hyderabad, India', '2022-07-01', 'Active'),
('Sara', 'Khan', '2005-04-12', 'Female', 'sara.khan@example.com', '9876543217', 'Bhopal, India', '2022-07-05', 'Active'),
('Kabir', 'Das', '2004-08-20', 'Male', 'kabir.das@example.com', '9876543218', 'Jaipur, India', '2022-07-10', 'Inactive'),
('Riya', 'Chatterjee', '2006-02-17', 'Female', 'riya.chatterjee@example.com', '9876543219', 'Kolkata, India', '2022-07-15', 'Active'),
('Dev', 'Joshi', '2005-10-11', 'Male', 'dev.joshi@example.com', '9876543220', 'Surat, India', '2022-07-20', 'Active'),
('Tara', 'Menon', '2006-05-30', 'Female', 'tara.menon@example.com', '9876543221', 'Chennai, India', '2022-07-22', 'Active'),
('Arjun', 'Kapoor', '2005-08-25', 'Male', 'arjun.kapoor@example.com', '9876543222', 'Mumbai, India', '2022-07-25', 'Active'),
('Nisha', 'Shetty', '2006-03-03', 'Female', 'nisha.shetty@example.com', '9876543223', 'Bangalore, India', '2022-07-28', 'Active'),
('Aditya', 'Mishra', '2004-11-19', 'Male', 'aditya.mishra@example.com', '9876543224', 'Varanasi, India', '2022-08-01', 'Active'),
('Pooja', 'Iyer', '2005-02-14', 'Female', 'pooja.iyer@example.com', '9876543225', 'Coimbatore, India', '2022-08-05', 'Active'),
('Karan', 'Yadav', '2005-06-02', 'Male', 'karan.yadav@example.com', '9876543226', 'Kanpur, India', '2022-08-10', 'Active'),
('Sneha', 'Gupta', '2006-07-09', 'Female', 'sneha.gupta@example.com', '9876543227', 'Indore, India', '2022-08-15', 'Active'),
('Rahul', 'Bansal', '2005-09-21', 'Male', 'rahul.bansal@example.com', '9876543228', 'Chandigarh, India', '2022-08-20', 'Inactive'),
('Priya', 'Kulkarni', '2006-01-25', 'Female', 'priya.kulkarni@example.com', '9876543229', 'Nagpur, India', '2022-08-25', 'Active');


-- Insert data into Courses table 
INSERT INTO Courses (course_name, course_code, credits, department)
VALUES 
('Mathematics', 'MATH101', 4, 'Science'),
('Physics', 'PHYS101', 4, 'Science'),
('Chemistry', 'CHEM101', 4, 'Science'),
('English Literature', 'ENG101', 3, 'Arts'),
('Computer Science', 'CS101', 5, 'Engineering'),
('History', 'HIST101', 3, 'Arts'),
('Economics', 'ECON101', 4, 'Commerce'),
('Biology', 'BIO101', 4, 'Science'),
('Accounting', 'ACC101', 4, 'Commerce'),
('Environmental Studies', 'ENV101', 2, 'Science');


-- Insert data into Marks table
INSERT INTO Marks (student_id, course_id, marks_obtained, exam_date)
VALUES
(1, 1, 85.50, '2025-03-15'),
(1, 2, 78.25, '2025-03-16'),
(1, 5, 92.00, '2025-03-17'),

(2, 1, 75.00, '2025-03-15'),
(2, 3, 81.75, '2025-03-16'),
(2, 5, 88.50, '2025-03-17'),

(3, 2, 68.00, '2025-03-15'),
(3, 4, 74.50, '2025-03-16'),
(3, 5, 90.25, '2025-03-17'),

(4, 1, 82.00, '2025-03-15'),
(4, 6, 79.00, '2025-03-16'),
(4, 8, 85.75, '2025-03-17'),

(5, 3, 80.00, '2025-03-15'),
(5, 5, 95.00, '2025-03-16'),
(5, 7, 77.50, '2025-03-17');


-- Student 6 
INSERT INTO Marks (student_id, course_id, marks_obtained, exam_date) VALUES
(6, 1, 69.50, '2025-03-15'),
(6, 4, 72.75, '2025-03-16'),
(6, 10, 90.00, '2025-03-17');

-- Student 7 
INSERT INTO Marks (student_id, course_id, marks_obtained, exam_date) VALUES
(7, 2, 73.25, '2025-03-15'),
(7, 5, 88.50, '2025-03-16'),
(7, 8, 76.00, '2025-03-17');

-- Student 8 
INSERT INTO Marks (student_id, course_id, marks_obtained, exam_date) VALUES
(8, 1, 78.00, '2025-03-15'),
(8, 4, 85.75, '2025-03-16'),
(8, 9, 80.50, '2025-03-17');

-- Student 9
INSERT INTO Marks (student_id, course_id, marks_obtained, exam_date) VALUES
(9, 3, 65.00, '2025-03-15'),
(9, 7, 70.25, '2025-03-16');

-- Student 10 
INSERT INTO Marks (student_id, course_id, marks_obtained, exam_date) VALUES
(10, 2, 88.75, '2025-03-15'),
(10, 6, 91.00, '2025-03-16'),
(10, 8, 84.00, '2025-03-17');

-- Student 11 
INSERT INTO Marks (student_id, course_id, marks_obtained, exam_date) VALUES
(11, 5, 79.50, '2025-03-15'),
(11, 9, 85.25, '2025-03-16');

-- Student 12 
INSERT INTO Marks (student_id, course_id, marks_obtained, exam_date) VALUES
(12, 1, 82.00, '2025-03-15'),
(12, 4, 77.75, '2025-03-16');

-- Student 13
INSERT INTO Marks (student_id, course_id, marks_obtained, exam_date) VALUES
(13, 2, 91.50, '2025-03-15'),
(13, 3, 87.25, '2025-03-16'),
(13, 7, 79.00, '2025-03-17');

-- Student 14
INSERT INTO Marks (student_id, course_id, marks_obtained, exam_date) VALUES
(14, 5, 84.00, '2025-03-15'),
(14, 6, 86.75, '2025-03-16'),
(14, 9, 88.25, '2025-03-17');

-- Student 15 
INSERT INTO Marks (student_id, course_id, marks_obtained, exam_date) VALUES
(15, 1, 76.50, '2025-03-15'),
(15, 2, 80.00, '2025-03-16'),
(15, 8, 72.25, '2025-03-17');

-- Student 16 
INSERT INTO Marks (student_id, course_id, marks_obtained, exam_date) VALUES
(16, 3, 68.00, '2025-03-15'),
(16, 4, 74.25, '2025-03-16'),
(16, 5, 82.00, '2025-03-17');

-- Student 17
INSERT INTO Marks (student_id, course_id, marks_obtained, exam_date) VALUES
(17, 2, 79.75, '2025-03-15'),
(17, 6, 83.00, '2025-03-16');

-- Student 18
INSERT INTO Marks (student_id, course_id, marks_obtained, exam_date) VALUES
(18, 1, 88.50, '2025-03-15'),
(18, 5, 92.25, '2025-03-16');

-- Student 19
INSERT INTO Marks (student_id, course_id, marks_obtained, exam_date) VALUES
(19, 3, 81.00, '2025-03-15'),
(19, 7, 78.75, '2025-03-16');

-- Student 20 
INSERT INTO Marks (student_id, course_id, marks_obtained, exam_date) VALUES
(20, 4, 74.00, '2025-03-15'),
(20, 8, 80.25, '2025-03-16');



