-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2024 at 05:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biwoco_aidd`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `result` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `file`, `result`) VALUES
(1, 'assignment1.pdf', 'A'),
(2, 'assignment2.pdf', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `staff_account_id` int(11) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `duration_unit` int(1) NOT NULL,
  `semeter` int(1) NOT NULL,
  `year` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `name`, `staff_account_id`, `description`, `duration_unit`, `semeter`, `year`) VALUES
(1, 'Introduction to Programming', 1, 'Basic course on programming concepts.', 1, 1, '2024'),
(2, 'Advanced Mechanical Engineering', 2, 'In-depth course on mechanical engineering topics.', 2, 2, '2024');

-- --------------------------------------------------------

--
-- Table structure for table `course_document_junc`
--

CREATE TABLE `course_document_junc` (
  `course_document_junc_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_document_junc`
--

INSERT INTO `course_document_junc` (`course_document_junc_id`, `course_id`, `document_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `establish_date` date NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `staff_size` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `name`, `establish_date`, `description`, `staff_size`) VALUES
(1, 'Engineering', '2000-05-15', 'Department of Engineering', 50),
(2, 'Business', '2005-08-22', 'Department of Business Administration', 30),
(3, 'Research', '2024-07-01', NULL, 30);

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `document_id` int(11) NOT NULL,
  `document_type` int(1) NOT NULL,
  `name` varchar(250) NOT NULL,
  `file` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`document_id`, `document_type`, `name`, `file`, `create_date`) VALUES
(1, 1, 'Course Syllabus', 'syllabus1.pdf', '2024-07-01 10:00:00'),
(2, 2, 'Faculty Handbook', 'handbook1.pdf', '2024-07-02 11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `enrollment_id` int(11) NOT NULL,
  `student_account_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `semeter` int(1) NOT NULL,
  `year` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`enrollment_id`, `student_account_id`, `course_id`, `semeter`, `year`) VALUES
(1, 1, 1, 1, '2024'),
(2, 2, 2, 2, '2024');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `expected_budget` decimal(10,2) DEFAULT NULL,
  `actual_budget` decimal(10,2) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `expected_budget`, `actual_budget`, `description`) VALUES
(1, 10000.00, 9500.00, 'Annual Research Conference'),
(2, 5000.00, 4800.00, 'Department Meeting');

-- --------------------------------------------------------

--
-- Table structure for table `event_club_dept_junc`
--

CREATE TABLE `event_club_dept_junc` (
  `event_stud_dept_junc_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `student_club_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_club_dept_junc`
--

INSERT INTO `event_club_dept_junc` (`event_stud_dept_junc_id`, `event_id`, `student_club_id`, `department_id`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `result` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `file`, `result`) VALUES
(1, 'exam1.pdf', 'Pass'),
(2, 'exam2.pdf', 'Fail');

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `facility_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(20) NOT NULL,
  `department_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`facility_id`, `name`, `code`, `department_id`, `create_date`) VALUES
(1, 'Library', 'LIB001', 1, '2024-07-05 09:00:00'),
(2, 'Laboratory', 'LAB001', 2, '2024-07-06 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `feedback` text NOT NULL,
  `attack_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `department_id`, `email`, `feedback`, `attack_file`) VALUES
(1, 1, 'feedback@example.com', 'Great service.', 'attack_file1.png'),
(2, 2, NULL, 'Needs improvement.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `form_id` int(11) NOT NULL,
  `form_type` int(2) NOT NULL,
  `staff_account_id` int(11) DEFAULT NULL,
  `student_account_id` int(11) DEFAULT NULL,
  `form` varchar(255) DEFAULT NULL,
  `form_scan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`form_id`, `form_type`, `staff_account_id`, `student_account_id`, `form`, `form_scan`) VALUES
(1, 1, 1, NULL, 'Form A', 'form1_scan.png'),
(2, 2, NULL, 1, 'Form B', 'form2_scan.png');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL,
  `grade` int(3) NOT NULL,
  `student_account_id` int(11) NOT NULL,
  `submission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `grade`, `student_account_id`, `submission_id`) VALUES
(1, 85, 1, 1),
(2, 90, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `investor`
--

CREATE TABLE `investor` (
  `investor_id` int(11) NOT NULL,
  `investor_type` int(1) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investor`
--

INSERT INTO `investor` (`investor_id`, `investor_type`, `name`) VALUES
(1, 1, 'John Investor'),
(2, 2, 'Jane Investor');

-- --------------------------------------------------------

--
-- Table structure for table `investor_publication_junc`
--

CREATE TABLE `investor_publication_junc` (
  `investor_publication_junc_id` int(11) NOT NULL,
  `investor_id` int(11) NOT NULL,
  `publication_id` int(11) NOT NULL,
  `contribution_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investor_publication_junc`
--

INSERT INTO `investor_publication_junc` (`investor_publication_junc_id`, `investor_id`, `publication_id`, `contribution_amount`) VALUES
(1, 1, 1, 20000.00),
(2, 2, 2, 15000.00);

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `payroll_id` int(11) NOT NULL,
  `staff_account_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `pay_date` date NOT NULL,
  `period_start` date NOT NULL,
  `period_end` date NOT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`payroll_id`, `staff_account_id`, `amount`, `pay_date`, `period_start`, `period_end`, `description`) VALUES
(1, 1, 3000.00, '2024-07-31', '2024-07-01', '2024-07-31', 'Monthly salary.');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `program_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `program_type` int(11) NOT NULL,
  `tuition_fee` decimal(10,2) NOT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`program_id`, `name`, `program_type`, `tuition_fee`, `description`) VALUES
(1, 'Computer Science', 1, 15000.00, 'A program focused on computer science and software engineering.'),
(2, 'Mechanical Engineering', 2, 12000.00, 'A program focused on mechanical engineering principles.'),
(3, 'Business Administration', 3, 10000.00, 'A program focused on business management and administration.');

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE `publication` (
  `publication_id` int(11) NOT NULL,
  `publication_type` int(1) NOT NULL,
  `title` varchar(250) NOT NULL,
  `expected_budget` decimal(10,2) DEFAULT NULL,
  `actual_budget` decimal(10,2) DEFAULT NULL,
  `release_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`publication_id`, `publication_type`, `title`, `expected_budget`, `actual_budget`, `release_date`) VALUES
(1, 1, 'Research on AI', 50000.00, 48000.00, '2024-07-01'),
(2, 2, 'Study on Mechanical Systems', 30000.00, 29000.00, '2024-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `publication_researcher_junc`
--

CREATE TABLE `publication_researcher_junc` (
  `publication_researcher_junc_id` int(11) NOT NULL,
  `publication_id` int(11) NOT NULL,
  `staff_account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publication_researcher_junc`
--

INSERT INTO `publication_researcher_junc` (`publication_researcher_junc_id`, `publication_id`, `staff_account_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` int(11) NOT NULL,
  `slot` int(1) NOT NULL,
  `course_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `slot`, `course_id`, `start_time`, `end_time`) VALUES
(1, 1, 1, '2024-08-01 09:00:00', '2024-08-01 12:00:00'),
(2, 2, 2, '2024-08-02 14:00:00', '2024-08-02 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `scholarship_id` int(11) NOT NULL,
  `scholarship_type` int(1) NOT NULL,
  `student_account_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `award_date` date NOT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`scholarship_id`, `scholarship_type`, `student_account_id`, `amount`, `award_date`, `description`) VALUES
(1, 1, 1, 2000.00, '2024-07-20', 'Merit-based scholarship for excellence.');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_type` int(1) NOT NULL,
  `department_id` int(11) NOT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service_type`, `department_id`, `description`) VALUES
(1, 1, 1, 'Technical Support'),
(2, 2, 2, 'Administrative Assistance');

-- --------------------------------------------------------

--
-- Table structure for table `staff_account`
--

CREATE TABLE `staff_account` (
  `staff_account_id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` char(32) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(355) DEFAULT NULL,
  `senority` int(2) NOT NULL,
  `citizen_id_number` bigint(20) DEFAULT NULL,
  `tax_code` varchar(20) DEFAULT NULL,
  `bank_number` char(34) NOT NULL,
  `profile_scan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_account`
--

INSERT INTO `staff_account` (`staff_account_id`, `email`, `password`, `fname`, `lname`, `phone`, `address`, `senority`, `citizen_id_number`, `tax_code`, `bank_number`, `profile_scan`) VALUES
(1, 'john.doe@example.com', 'e99a18c428cb38d5f260853678922e03', 'John', 'Doe', '123-456-7890', '123 Elm St', 5, 123456789012, 'US123456789', '12345678901234567890123456789012', 'profile1.png'),
(2, 'jane.smith@example.com', 'a6d5a0c8d0b9e8b2f989d12fd71e29c0', 'Jane', 'Smith', '987-654-3210', '456 Oak St', 3, NULL, 'US987654321', '98765432109876543210987654321098', 'profile2.png');

-- --------------------------------------------------------

--
-- Table structure for table `student_account`
--

CREATE TABLE `student_account` (
  `student_account_id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` char(32) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(355) DEFAULT NULL,
  `program_id` int(11) NOT NULL,
  `admission_date` date NOT NULL,
  `graduate_status` tinyint(1) NOT NULL,
  `profile_scan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_account`
--

INSERT INTO `student_account` (`student_account_id`, `email`, `password`, `fname`, `lname`, `phone`, `address`, `program_id`, `admission_date`, `graduate_status`, `profile_scan`) VALUES
(1, 'alice.jones@example.com', '9e107d9d372bb6826bd81d3542a419d6', 'Alice', 'Jones', '321-654-9870', '789 Pine St', 1, '2022-08-01', 0, 'profile3.png'),
(2, 'bob.brown@example.com', 'd3b07384d113edec49eaa6238ad5ff00', 'Bob', 'Brown', '654-321-0987', '101 Maple St', 2, '2023-01-15', 0, 'profile4.png');

-- --------------------------------------------------------

--
-- Table structure for table `student_club`
--

CREATE TABLE `student_club` (
  `student_club_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `member_size` int(2) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_club`
--

INSERT INTO `student_club` (`student_club_id`, `name`, `member_size`, `create_date`) VALUES
(1, 'Science Club', 20, '2024-07-10 10:00:00'),
(2, 'Math Club', 15, '2024-07-11 11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_club_junc`
--

CREATE TABLE `student_club_junc` (
  `student_club_junc_id` int(11) NOT NULL,
  `student_club_id` int(11) NOT NULL,
  `student_account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_club_junc`
--

INSERT INTO `student_club_junc` (`student_club_junc_id`, `student_club_id`, `student_account_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE `submission` (
  `submission_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `submission_type` int(1) NOT NULL,
  `assignment_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submission`
--

INSERT INTO `submission` (`submission_id`, `course_id`, `submission_type`, `assignment_id`, `exam_id`, `file`) VALUES
(1, 1, 1, NULL, NULL, 'submission1.pdf'),
(2, 2, 2, 1, NULL, 'submission2.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `submission_student_junc`
--

CREATE TABLE `submission_student_junc` (
  `submission_student_junc_id` int(11) NOT NULL,
  `student_account_id` int(11) NOT NULL,
  `submission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `transaction_type` int(1) NOT NULL,
  `create_date` datetime NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `student_account_id` int(11) DEFAULT NULL,
  `staff_account_id` int(11) DEFAULT NULL,
  `payroll_id` int(11) DEFAULT NULL,
  `scholarship_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `transaction_type`, `create_date`, `description`, `student_account_id`, `staff_account_id`, `payroll_id`, `scholarship_id`) VALUES
(1, 1, '2024-07-20 09:00:00', 'Payment for course fees', 1, NULL, NULL, NULL),
(2, 2, '2024-07-21 10:00:00', 'Scholarship award', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tuition_fee`
--

CREATE TABLE `tuition_fee` (
  `tuition_fee_id` int(11) NOT NULL,
  `student_account_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `due_date` date NOT NULL,
  `payment_status` int(1) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `semester` int(1) NOT NULL,
  `year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tuition_fee`
--

INSERT INTO `tuition_fee` (`tuition_fee_id`, `student_account_id`, `course_id`, `amount`, `due_date`, `payment_status`, `payment_date`, `semester`, `year`) VALUES
(1, 1, 1, 1500.00, '2024-08-01', 0, NULL, 1, 2024),
(2, 2, 2, 1200.00, '2024-09-01', 1, '2024-08-15', 2, 2024);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `staff_account_id` (`staff_account_id`);

--
-- Indexes for table `course_document_junc`
--
ALTER TABLE `course_document_junc`
  ADD PRIMARY KEY (`course_document_junc_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `document_id` (`document_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD KEY `student_account_id` (`student_account_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_club_dept_junc`
--
ALTER TABLE `event_club_dept_junc`
  ADD PRIMARY KEY (`event_stud_dept_junc_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `student_club_id` (`student_club_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`facility_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`form_id`),
  ADD KEY `staff_account_id` (`staff_account_id`),
  ADD KEY `student_account_id` (`student_account_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`),
  ADD KEY `student_account_id` (`student_account_id`),
  ADD KEY `submission_id` (`submission_id`);

--
-- Indexes for table `investor`
--
ALTER TABLE `investor`
  ADD PRIMARY KEY (`investor_id`);

--
-- Indexes for table `investor_publication_junc`
--
ALTER TABLE `investor_publication_junc`
  ADD PRIMARY KEY (`investor_publication_junc_id`),
  ADD KEY `investor_id` (`investor_id`),
  ADD KEY `publication_id` (`publication_id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`payroll_id`),
  ADD KEY `staff_account_id` (`staff_account_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`publication_id`);

--
-- Indexes for table `publication_researcher_junc`
--
ALTER TABLE `publication_researcher_junc`
  ADD PRIMARY KEY (`publication_researcher_junc_id`),
  ADD KEY `publication_id` (`publication_id`),
  ADD KEY `staff_account_id` (`staff_account_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`scholarship_id`),
  ADD KEY `student_account_id` (`student_account_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `staff_account`
--
ALTER TABLE `staff_account`
  ADD PRIMARY KEY (`staff_account_id`);

--
-- Indexes for table `student_account`
--
ALTER TABLE `student_account`
  ADD PRIMARY KEY (`student_account_id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `student_club`
--
ALTER TABLE `student_club`
  ADD PRIMARY KEY (`student_club_id`);

--
-- Indexes for table `student_club_junc`
--
ALTER TABLE `student_club_junc`
  ADD PRIMARY KEY (`student_club_junc_id`),
  ADD KEY `student_club_id` (`student_club_id`),
  ADD KEY `student_account_id` (`student_account_id`);

--
-- Indexes for table `submission`
--
ALTER TABLE `submission`
  ADD PRIMARY KEY (`submission_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `assignment_id` (`assignment_id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Indexes for table `submission_student_junc`
--
ALTER TABLE `submission_student_junc`
  ADD PRIMARY KEY (`submission_student_junc_id`),
  ADD KEY `student_account_id` (`student_account_id`),
  ADD KEY `submission_id` (`submission_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `student_account_id` (`student_account_id`),
  ADD KEY `staff_account_id` (`staff_account_id`),
  ADD KEY `payroll_id` (`payroll_id`),
  ADD KEY `scholarship_id` (`scholarship_id`);

--
-- Indexes for table `tuition_fee`
--
ALTER TABLE `tuition_fee`
  ADD PRIMARY KEY (`tuition_fee_id`),
  ADD KEY `student_account_id` (`student_account_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`staff_account_id`) REFERENCES `staff_account` (`staff_account_id`);

--
-- Constraints for table `course_document_junc`
--
ALTER TABLE `course_document_junc`
  ADD CONSTRAINT `course_document_junc_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `course_document_junc_ibfk_2` FOREIGN KEY (`document_id`) REFERENCES `document` (`document_id`);

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`student_account_id`) REFERENCES `student_account` (`student_account_id`),
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `event_club_dept_junc`
--
ALTER TABLE `event_club_dept_junc`
  ADD CONSTRAINT `event_club_dept_junc_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`),
  ADD CONSTRAINT `event_club_dept_junc_ibfk_2` FOREIGN KEY (`student_club_id`) REFERENCES `student_club` (`student_club_id`),
  ADD CONSTRAINT `event_club_dept_junc_ibfk_3` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `facility`
--
ALTER TABLE `facility`
  ADD CONSTRAINT `facility_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `form`
--
ALTER TABLE `form`
  ADD CONSTRAINT `form_ibfk_1` FOREIGN KEY (`staff_account_id`) REFERENCES `staff_account` (`staff_account_id`),
  ADD CONSTRAINT `form_ibfk_2` FOREIGN KEY (`student_account_id`) REFERENCES `student_account` (`student_account_id`);

--
-- Constraints for table `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`student_account_id`) REFERENCES `student_account` (`student_account_id`),
  ADD CONSTRAINT `grade_ibfk_2` FOREIGN KEY (`submission_id`) REFERENCES `submission` (`submission_id`);

--
-- Constraints for table `investor_publication_junc`
--
ALTER TABLE `investor_publication_junc`
  ADD CONSTRAINT `investor_publication_junc_ibfk_1` FOREIGN KEY (`investor_id`) REFERENCES `investor` (`investor_id`),
  ADD CONSTRAINT `investor_publication_junc_ibfk_2` FOREIGN KEY (`publication_id`) REFERENCES `publication` (`publication_id`);

--
-- Constraints for table `payroll`
--
ALTER TABLE `payroll`
  ADD CONSTRAINT `payroll_ibfk_1` FOREIGN KEY (`staff_account_id`) REFERENCES `staff_account` (`staff_account_id`);

--
-- Constraints for table `publication_researcher_junc`
--
ALTER TABLE `publication_researcher_junc`
  ADD CONSTRAINT `publication_researcher_junc_ibfk_1` FOREIGN KEY (`publication_id`) REFERENCES `publication` (`publication_id`),
  ADD CONSTRAINT `publication_researcher_junc_ibfk_2` FOREIGN KEY (`staff_account_id`) REFERENCES `staff_account` (`staff_account_id`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD CONSTRAINT `scholarship_ibfk_1` FOREIGN KEY (`student_account_id`) REFERENCES `student_account` (`student_account_id`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `student_account`
--
ALTER TABLE `student_account`
  ADD CONSTRAINT `student_account_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `program` (`program_id`);

--
-- Constraints for table `student_club_junc`
--
ALTER TABLE `student_club_junc`
  ADD CONSTRAINT `student_club_junc_ibfk_1` FOREIGN KEY (`student_club_id`) REFERENCES `student_club` (`student_club_id`),
  ADD CONSTRAINT `student_club_junc_ibfk_2` FOREIGN KEY (`student_account_id`) REFERENCES `student_account` (`student_account_id`);

--
-- Constraints for table `submission`
--
ALTER TABLE `submission`
  ADD CONSTRAINT `submission_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `submission_ibfk_2` FOREIGN KEY (`assignment_id`) REFERENCES `assignment` (`assignment_id`),
  ADD CONSTRAINT `submission_ibfk_3` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`exam_id`);

--
-- Constraints for table `submission_student_junc`
--
ALTER TABLE `submission_student_junc`
  ADD CONSTRAINT `submission_student_junc_ibfk_1` FOREIGN KEY (`student_account_id`) REFERENCES `student_account` (`student_account_id`),
  ADD CONSTRAINT `submission_student_junc_ibfk_2` FOREIGN KEY (`submission_id`) REFERENCES `submission` (`submission_id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`student_account_id`) REFERENCES `student_account` (`student_account_id`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`staff_account_id`) REFERENCES `staff_account` (`staff_account_id`),
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`payroll_id`) REFERENCES `payroll` (`payroll_id`),
  ADD CONSTRAINT `transaction_ibfk_4` FOREIGN KEY (`scholarship_id`) REFERENCES `scholarship` (`scholarship_id`);

--
-- Constraints for table `tuition_fee`
--
ALTER TABLE `tuition_fee`
  ADD CONSTRAINT `tuition_fee_ibfk_1` FOREIGN KEY (`student_account_id`) REFERENCES `student_account` (`student_account_id`),
  ADD CONSTRAINT `tuition_fee_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
