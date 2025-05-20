# 💾 SQL & PL/SQL Projects

This repository contains a collection of hands-on SQL and PL/SQL projects designed to demonstrate strong database design, query optimization, procedural programming, and real-world logic building. These projects are beginner to intermediate-friendly and showcase problem-solving using core database principles.

---

## 📁 Projects Implemented

### 1. 👨‍💼 Employee Management System

**Description**:  
A simple database project that manages employee data and attendance using SQL and PL/SQL components.

**Key Features**:
- Employee and Attendance tables
- Trigger to log audit records upon employee insert
- Stored Procedure to summarize attendance per employee

**Implemented Concepts**:
- Table creation
- Insert/Update/Delete operations
- Triggers
- Stored Procedures
- Aggregate functions

**Files Included**:
- `01_create_database.sql`
- `02_create_table.sql`
- `03_insert_sample_data.sql`
- `04_stored_procedure_add_employee.sql`
- `05_employee_audit_table.sql`
- `06_trg_after_salary_update.sql`
- `update_employee.sql`
- `07_proc_update_employee_status.sql`
- `08_proc_get_attendance_summery.sql`
------------------------------------

### 2. 🏥 Hospital Management System

**Description**:  
A comprehensive database project designed to manage hospital operations such as patient registrations, doctor listings, appointment scheduling, and treatment history using SQL and PL/SQL.

**Key Features**:
- Patient, Doctor, Appointment, and Treatment tables
- Appointment scheduling and tracking system
- Stored Procedures to assign doctors and generate treatment reports
- Triggers for audit and activity logging

**Implemented Concepts**:
- Table design with relationships
- Insert/Update/Delete operations
- Foreign key constraints
- Triggers
- Stored Procedures
- Conditional logic and joins

**Files Included**:
- `hospital_schema.sql`
- `insert_patient.sql`
- `insert_doctors.sql`
- `insert_appointments.sql`
- `insert_billing.sql`
- 'insert_pharmacy.sql`
- `view_appointment_billing.sql`
- `view_billing_summary.sql`
- `view_todays_appointment.sql`
- `proc_generate_bill.sql`
- `trig_before_insert_patient.sql`
- `trig_after_insert_appointment.sql`
- `trig_after_update_billing.sql`
------------------------------------------------------------------------------------------------------------


#  Student Performance Tracker

A professional MySQL project to manage and track student performance using **stored procedures**, **triggers**, and **views**.

---

##  Project Overview

This system tracks:
- Student records
- Courses offered
- Marks obtained
- Attendance percentage
- Grades (auto-calculated)

Built with **real-time automation** using triggers and procedures for professional-grade database management.

---

## 🛠 Database Details

###  Tables

- `Students`: Student personal and admission details.
- `Courses`: List of available courses.
- `Marks`: Student marks per course.
- `Attendance`: Attendance percentage tracking.


##  Features

- **✅ Automatic Grade Calculation**
  - Based on marks percentage using a stored procedure `Assign_Grades()`.

- **✅ Real-time Updates**
  - Triggers on the `Marks` table fire after `INSERT` or `UPDATE` and call `Assign_Grades()` automatically.

- **✅ Comprehensive Data Structure**
  - Foreign key relationships to ensure referential integrity.

- **✅ Extendable Reports**
  - Views can be created for dynamic report cards and GPA calculations.


##  Core Components

###  Stored Procedure: `Assign_Grades()`

Calculates and updates grades based on student marks.

**Grade Logic:**
| Percentage | Grade |
|:----------:|:-----:|
| >= 90%     | A+    |
| >= 80%     | A     |
| >= 70%     | B     |
| >= 60%     | C     |
| >= 50%     | D     |
| < 50%      | F     |

sql
CALL Assign_Grades();

### Triggers

**trg_after_marks_insert**

Fires after a new mark is inserted.

**trg_after_marks_update**

Fires after a mark is updated.

Both triggers automatically call Assign_Grades() to ensure the Grades table is always updated.

## Workflow
1. Insert or update records in the Marks table.

2. Trigger fires automatically.

3. Stored procedure recalculates grades.

4. Grades table is updated real-time.

## Technologies Used
Database: MySQL 8+

Tools: MySQL Workbench, DBeaver, phpMyAdmin

Language: SQL

## Future Enhancements
- Overall GPA Calculation

- Report Card View Generation

- Performance Dashboards

- Exportable Report Cards (PDF, Excel)



-----------------------------------
### HRMS Payroll

To manage employee salaries, deductions, allowances, bonuses, and payslips efficiently.

**Description**:  
A comprehensive database project designed to manage HRMS operations using SQL and PL/SQL.
*** Schema Name : ***

Hrms_payroll

## Implemented Concepts:

Table creation
Insert/Update/Delete operations
Triggers
Stored Procedures
Aggregate functions

## Tables 
- Employee
- Departmets
- Employee_attendace
- Employee_deduction
- Employee_payslip
- Employee_payslip
- Employee_salary
- System_users

## Triggers 
-  after_employee_insert
-  after_employee_update
-  after_employee_delete

## Procedures
- AddEmployee
- generate_payroll_for_month


## Views
- Monthly_Payroll_Report
- Employee_loan_status
- active_employee_salary_summary
- monthly_deductions_summary
----------------------------------


## Author
Tilottama Shinde

