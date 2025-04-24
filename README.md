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
- `employees.sql`
- `attendance.sql`
- `employee_audit.sql`
- `get_attendance_summary.sql`
- `after_employee_insert_trigger.sql`
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
