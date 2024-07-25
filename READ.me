# Database Schema Documentation

This document provides an overview of the database schema, including tables and their attributes, for the system.

## Tables and Attributes

### `program`
**Description:** This table stores records related to the teaching programs offered by the institution.
- **program_id**: Primary key, an integer uniquely identifying each program.
- **name**: Name of the program, maximum of 150 characters.
- **program_type**: Type of program, an integer.
- **tuition_fee**: Tuition fee for the program, a decimal with 10 digits, 2 after the decimal point.
- **description**: Description of the program, up to 500 characters, nullable.

### `staff_account`
**Description:** This table contains details about staff members including their personal information and login credentials.
- **staff_account_id**: Primary key, an integer uniquely identifying each staff member.
- **email**: Email address of the staff member, up to 60 characters.
- **password**: MD5 hash of the staff member's password, 32 characters.
- **fname**: First name of the staff member, up to 50 characters.
- **lname**: Last name of the staff member, up to 100 characters.
- **phone**: Phone number, covers all phone lines, up to 20 characters.
- **address**: Address of the staff member, up to 355 characters, nullable.
- **seniority**: Seniority level of the staff member, an integer with 2 digits.
- **citizen_id_number**: Citizen ID number, up to 20 digits, nullable.
- **tax_code**: Tax code, up to 20 characters, nullable, covers all country tax codes.
- **bank_number**: Bank account number, up to 34 digits.
- **profile_scan**: Path to profile scan image, up to 255 characters.

### `department`
**Description:** This table records information about the different departments within the institution.
- **department_id**: Primary key, an integer uniquely identifying each department.
- **name**: Name of the department, maximum of 150 characters.
- **establish_date**: Date of establishment, in YYYY-MM-DD format.
- **description**: Description of the department, up to 500 characters, nullable.
- **staff_size**: Size of the staff in the department, an integer with 5 digits, nullable.

### `staff_department_junc`
**Description:** This junction table maps staff members to their respective departments and tracks their start date.
- **staff_department_junc_id**: Primary key, an integer uniquely identifying each staff-department relationship.
- **staff_account_id**: Foreign key linked to the `staff_account` table.
- **department_id**: Foreign key linked to the `department` table.
- **start_at**: Start date of the staff in the department, in YYYY-MM-DD format.

### `student_account`
**Description:** This table contains details about students including their personal information and admission details.
- **student_account_id**: Primary key, an integer uniquely identifying each student.
- **email**: Email address of the student, up to 60 characters.
- **password**: MD5 hash of the student's password, 32 characters.
- **fname**: First name of the student, up to 50 characters.
- **lname**: Last name of the student, up to 100 characters.
- **phone**: Phone number of the student, covers all phone lines, up to 20 characters, nullable.
- **address**: Address of the student, up to 355 characters, nullable.
- **program_id**: Foreign key linked to the `program` table.
- **admission_date**: Date of admission, in YYYY-MM-DD format.
- **graduate_status**: Boolean indicating whether the student has graduated.
- **profile_scan**: Path to profile scan image, up to 255 characters, nullable.

### `course`
**Description:** This table stores information about the courses offered by the institution.
- **course_id**: Primary key, an integer uniquely identifying each course.
- **name**: Name of the course, maximum of 250 characters.
- **staff_account_id**: Foreign key linked to the `staff_account` table.
- **description**: Description of the course, up to 500 characters, nullable.
- **duration_unit**: Unit of duration (weeks, months, etc.), an integer with 1 digit.
- **semester**: Semester in which the course is offered, an integer with 1 digit.
- **year**: Academic year, a string of 4 characters.

### `enrollment`
**Description:** This table records the enrollment of students in various courses.
- **enrollment_id**: Primary key, an integer uniquely identifying each enrollment.
- **student_account_id**: Foreign key linked to the `student_account` table.
- **course_id**: Foreign key linked to the `course` table.
- **semester**: Semester of enrollment, an integer with 1 digit.
- **year**: Academic year of enrollment, a string of 4 characters.

### `submission`
**Description:** This table tracks submissions related to assignments and exams for courses.
- **submission_id**: Primary key, an integer uniquely identifying each submission.
- **course_id**: Foreign key linked to the `course` table.
- **submission_type**: Type of submission (assignment, exam, etc.), an integer with 1 digit.
- **assignment_id**: Foreign key linked to the `assignment` table, nullable.
- **exam_id**: Foreign key linked to the `exam` table, nullable.
- **file**: Path to the submitted file, up to 255 characters.

### `submission_student_junc` (for group submissions)
**Description:** This junction table maps students to their group submissions.
- **submission_student_junc_id**: Primary key, an integer uniquely identifying each group submission.
- **student_account_id**: Foreign key linked to the `student_account` table.
- **submission_id**: Foreign key linked to the `submission` table.

### `exam`
**Description:** This table contains information about exams including the associated files and results.
- **exam_id**: Primary key, an integer uniquely identifying each exam.
- **file**: Path to the exam file, up to 255 characters.
- **result**: Result of the exam, up to 255 characters.

### `assignment`
**Description:** This table records details about assignments, including the associated files and results.
- **assignment_id**: Primary key, an integer uniquely identifying each assignment.
- **file**: Path to the assignment file, up to 255 characters.
- **result**: Result of the assignment, up to 255 characters.

### `grade`
**Description:** This table records grades given to students based on their submissions.
- **grade_id**: Primary key, an integer uniquely identifying each grade record.
- **grade**: Grade given, an integer with 3 digits.
- **student_account_id**: Foreign key linked to the `student_account` table.
- **submission_id**: Foreign key linked to the `submission` table.

### `schedule`
**Description:** This table maintains the schedule for courses, including start and end times.
- **schedule_id**: Primary key, an integer uniquely identifying each schedule entry.
- **slot**: Time slot for the schedule, an integer with 1 digit.
- **course_id**: Foreign key linked to the `course` table.
- **start_time**: Start time of the schedule, in YYYY-MM-DD HH:MM:SS format.
- **end_time**: End time of the schedule, in YYYY-MM-DD HH:MM:SS format.

### `form`
**Description:** This table stores forms related to staff and students, including form types and scans.
- **form_id**: Primary key, an integer uniquely identifying each form.
- **form_type**: Type of form, an integer with 2 digits.
- **staff_account_id**: Foreign key linked to the `staff_account` table, nullable.
- **student_account_id**: Foreign key linked to the `student_account` table, nullable.
- **form**: Path to the form, up to 255 characters, nullable.
- **form_scan**: Path to the scanned form, up to 255 characters, nullable.

### `feedback`
**Description:** This table stores feedback related to departments, including comments and attached files.
- **feedback_id**: Primary key, an integer uniquely identifying each feedback entry.
- **department_id**: Foreign key linked to the `department` table.
- **email**: Email address sending feedback, up to 150 characters, nullable.
- **feedback**: Content of the feedback, size not limited (max_size).
- **attack_file**: Path to any attached file, up to 255 characters, nullable.

### `publication`
**Description:** This table tracks publications, including expected and actual budgets.
- **publication_id**: Primary key, an integer uniquely identifying each publication.
- **publication_type**: Type of publication (report, paper, etc.), an integer with 1 digit.
- **title**: Title of the publication, up to 250 characters.
- **expected_budget**: Expected budget for the publication, a decimal with 10 digits, 2 after the decimal point, nullable.
- **actual_budget**: Actual budget for the publication, a decimal with 10 digits, 2 after the decimal point, nullable.

### `publication_researcher_junc`
**Description:** This junction table maps researchers to publications they are associated with.
- **publication_researcher_junc_id**: Primary key, an integer uniquely identifying each researcher-publication relationship.
- **publication_id**: Foreign key linked to the `publication` table.
- **staff_account_id**: Foreign key linked to the `staff_account` table.

### `investor`
**Description:** This table records details about investors, including their types and names.
- **investor_id**: Primary key, an integer uniquely identifying each investor.
- **investor_type**: Type of investor (individual, organization, etc.), an integer with 1 digit.
- **name**: Name of the investor, up to 150 characters.

### `investor_publication_junc`
**Description:** This junction table maps investors to publications they contribute to.
- **investor_publication_junc_id**: Primary key, an integer uniquely identifying each investor-publication relationship.
- **investor_id**: Foreign key linked to the `investor` table.
- **publication_id**: Foreign key linked to the `publication` table.
- **contribution_amount**: Amount contributed by the investor, a decimal with 10 digits, 2 after the decimal point.

### `event`
**Description:** This table stores information about events, including budget details and descriptions.
- **event_id**: Primary key, an integer uniquely identifying each event.
- **expected_budget**: Expected budget for the event, a decimal with 10 digits, 2 after the decimal point, nullable.
- **actual_budget**: Actual budget for the event, a decimal with 10 digits, 2 after the decimal point, nullable.
- **description**: Description of the event, up to 500 characters, nullable.

### `service`
**Description:** This table records details about various services provided by the institution.
- **service_id**: Primary key, an integer uniquely identifying each service.
- **service_type**: Type of service provided, an integer with 1 digit.
- **department_id**: Foreign key linked to the `department` table.
- **description**: Description of the service, up to 500 characters, nullable.

### `document`
**Description:** This table stores information about documents, including their types and file paths.
- **document_id**: Primary key, an integer uniquely identifying each document.
- **document_type**: Type of document, an integer with 1 digit.
- **name**: Name of the document, up to 250 characters.
- **file**: Path to the document file, up to 255 characters.
- **create_date**: Date and time when the document was created, in YYYY-MM-DD HH:MM:SS format.

### `course_document_junc`
**Description:** This junction table maps documents to courses they are associated with.
- **course_document_junc_id**: Primary key, an integer uniquely identifying each course-document relationship.
- **course_id**: Foreign key linked to the `course` table.
- **document_id**: Foreign key linked to the `document` table.

### `library_resource`
**Description:** This table keeps track of library resources including their names, types, and locations.
- **library_resource_id**: Primary key, an integer uniquely identifying each library resource.
- **name**: Name of the library resource, up to 250 characters.
- **type**: Type of library resource (book, journal, etc.), an integer.
- **location**: Location of the resource in the library, up to 150 characters.
- **availability**: Availability status of the resource, an integer with 1 digit.

### `facility`
**Description:** This table records details about facilities, including their names, codes, and associated departments.
- **facility_id**: Primary key, an integer uniquely identifying each facility.
- **name**: Name of the facility, up to 250 characters.
- **code**: Code identifying the facility, up to 20 characters.
- **department_id**: Foreign key linked to the `department` table.
- **create_date**: Date and time when the facility was created, in YYYY-MM-DD HH:MM:SS format.

### `student_club`
**Description:** This table contains information about student clubs, including their names and membership sizes.
- **student_club_id**: Primary key, an integer uniquely identifying each student club.
- **name**: Name of the student club, up to 150 characters.
- **member_size**: Size of the student club's membership, an integer with 2 digits.
- **create_date**: Date and time when the student club was created, in YYYY-MM-DD HH:MM:SS format.

### `event_club_dept_junc`
**Description:** This junction table maps events to student clubs and departments, tracking their associations.
- **event_club_dept_junc_id**: Primary key, an integer uniquely identifying each event-club-department relationship.
- **event_id**: Foreign key linked to the `event` table.
- **student_club_id**: Foreign key linked to the `student_club` table, nullable.
- **department_id**: Foreign key linked to the `department` table, nullable.

### `student_club_junc`
**Description:** This junction table maps students to student clubs, tracking their memberships.
- **student_club_junc_id**: Primary key, an integer uniquely identifying each student-club relationship.
- **student_club_id**: Foreign key linked to the `student_club` table.
- **student_account_id**: Foreign key linked to the `student_account` table.

### `tuition_fee`
**Description:** This table records tuition fees for students, including amounts and payment statuses.
- **tuition_fee_id**: Primary key, an integer uniquely identifying each tuition fee record.
- **student_account_id**: Foreign key linked to the `student_account` table.
- **course_id**: Foreign key linked to the `course` table.
- **amount**: Amount of the tuition fee, a decimal with 10 digits, 2 after the decimal point.
- **due_date**: Due date for the tuition fee, in YYYY-MM-DD format.
- **payment_status**: Status of the payment (paid, unpaid, etc.), an integer with 1 digit.
- **payment_date**: Date of payment, in YYYY-MM-DD format.
- **semester**: Semester for the fee, an integer with 1 digit.
- **year**: Academic year for the fee, an integer with 4 digits.

### `transaction`
**Description:** This table tracks transactions, including types and associated records.
- **transaction_id**: Primary key, an integer uniquely identifying each transaction.
- **transaction_type**: Type of transaction (payment, refund, etc.), an integer with 1 digit.
- **create_date**: Date and time when the transaction was created, in YYYY-MM-DD HH:MM:SS format.
- **description**: Description of the transaction, up to 500 characters, nullable.
- **student_account_id**: Foreign key linked to the `student_account` table, nullable.
- **staff_account_id**: Foreign key linked to the `staff_account` table, nullable.
- **payroll_id**: Foreign key linked to the `payroll` table, nullable.
- **scholarship_id**: Foreign key linked to the `scholarship` table, nullable.

### `scholarship`
**Description:** This table records scholarships awarded to students, including amounts and descriptions.
- **scholarship_id**: Primary key, an integer uniquely identifying each scholarship.
- **scholarship_type**: Type of scholarship (merit-based, need-based, etc.), an integer with 1 digit.
- **student_account_id**: Foreign key linked to the `student_account` table.
- **amount**: Amount of the scholarship, a decimal with 10 digits, 2 after the decimal point.
- **award_date**: Date the scholarship was awarded, in YYYY-MM-DD format.
- **description**: Description of the scholarship, up to 500 characters, nullable.

### `payroll`
**Description:** This table tracks payroll records for staff, including amounts and payment periods.
- **payroll_id**: Primary key, an integer uniquely identifying each payroll record.
- **staff_account_id**: Foreign key linked to the `staff_account` table.
- **amount**: Amount of the payroll, a decimal with 10 digits, 2 after the decimal point.
- **pay_date**: Date of payment, in YYYY-MM-DD format.
- **period_start**: Start date of the payroll period, in YYYY-MM-DD format.
- **period_end**: End date of the payroll period, in YYYY-MM-DD format.
- **description**: Description of the payroll, up to 500 characters, nullable.

---

Feel free to update and extend this documentation as needed. For further information, please refer to the detailed schema design.
