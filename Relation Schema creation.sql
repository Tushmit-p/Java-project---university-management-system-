create database uni_management;

#1. Query for department
CREATE TABLE `department` (
  `department_id` varchar(20) NOT NULL,
  `department_name` varchar(20) NOT NULL,
  `head_of_department` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`department_id`),
  UNIQUE KEY `department_name` (`department_name`),
  KEY `department_ibfk_1` (`head_of_department`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`head_of_department`) REFERENCES `faculty` (`faculty_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#2. Query for faculty
CREATE TABLE `faculty` (
  `faculty_id` varchar(20) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `permanent_address` varchar(100) DEFAULT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `department_id` varchar(20) DEFAULT NULL,
  `present_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `faculty_ibfk_1` (`department_id`),
  CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#3. Query for student
CREATE TABLE `student` (
  `student_id` varchar(20) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contact_1` varchar(15) DEFAULT NULL,
  `permanent_address` varchar(40) DEFAULT NULL,
  `department_id` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `mother_name` varchar(30) DEFAULT NULL,
  `father_name` varchar(30) DEFAULT NULL,
  `nationality` varchar(15) DEFAULT NULL,
  `present_address` varchar(40) DEFAULT NULL,
  `course_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `student_ibfk_1` (`department_id`),
  KEY `student_ibfk_2` (`course_code`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`course_code`) REFERENCES `course` (`course_code`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#4. Query for course
CREATE TABLE `course` (
  `course_id` varchar(10) NOT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `course_code` varchar(10) DEFAULT NULL,
  `department_id` varchar(20) DEFAULT NULL,
  `credits` float DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_code` (`course_code`),
  KEY `course_ibfk_1` (`department_id`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#5. Query for enrollment
CREATE TABLE `enrollment` (
  `enrollment_id` varchar(20) NOT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `course_id` varchar(10) DEFAULT NULL,
  `semester` int DEFAULT NULL,
  `course_year` int DEFAULT NULL,
  PRIMARY KEY (`enrollment_id`),
  KEY `enrollment_ibfk_1` (`student_id`),
  KEY `enrollment_ibfk_2` (`course_id`),
  CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#6. Query for fee
CREATE TABLE `fee` (
  `result_id` varchar(15) NOT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `fee_amount` float DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  PRIMARY KEY (`result_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `fee_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#7. Query for result
CREATE TABLE `result` (
  `result_id` varchar(15) NOT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `course_id` varchar(10) DEFAULT NULL,
  `marks_obtained` float DEFAULT NULL,
  `grade` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`result_id`),
  KEY `student_id` (`student_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `result_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `result_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#8. Query for course_faculty
CREATE TABLE `course_faculty` (
  `course_id` varchar(10) DEFAULT NULL,
  `faculty_id` varchar(10) DEFAULT NULL,
  KEY `course_faculty_ibfk_1` (`course_id`),
  KEY `course_faculty_ibfk_2` (`faculty_id`),
  CONSTRAINT `course_faculty_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `course_faculty_ibfk_2` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;