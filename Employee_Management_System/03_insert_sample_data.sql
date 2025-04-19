INSERT INTO departments (dept_name) VALUES 
('Human Resources'),
('Finance'),
('IT'),
('Marketing');

INSERT INTO employees (emp_name, email, hire_date, dept_id) VALUES 
('Amit Sharma', 'amit.sharma@example.com', '2021-05-10', 1),
('Priya Verma', 'priya.verma@example.com', '2022-01-15', 3),
('Rohit Mehta', 'rohit.mehta@example.com', '2020-08-23', 2),
('Sneha Nair', 'sneha.nair@example.com', '2019-11-05', 3),
('Vikram Rao', 'vikram.rao@example.com', '2023-02-01', 4);

INSERT INTO attendance (emp_id, date, status) VALUES 
(1, '2025-04-01', 'Present'),
(1, '2025-04-02', 'Leave'),
(2, '2025-04-01', 'Present'),
(3, '2025-04-01', 'Absent'),
(4, '2025-04-01', 'Present'),
(5, '2025-04-01', 'Present');

INSERT INTO salary (emp_id, month, year, amount) VALUES 
(1, 'March', 2025, 50000.00),
(2, 'March', 2025, 60000.00),
(3, 'March', 2025, 55000.00),
(4, 'March', 2025, 65000.00),
(5, 'March', 2025, 48000.00);
