-- 02_seed.sql
-- Sample records minimum reqs:
-- students 8, departments 2, professors 3
-- courses 4, sections 6, enrollments 20


-- PROFESSOR (need 3+)
INSERT INTO professor (ssn, name, street, city, state, zip, area_code, phone_number, sex, title, salary)
VALUES ('215469281', 'Mansour Abdoli', '123 Main St', 'Fullerton', 'CA', '92831', '657', '2757259', 'M', 'Professor', 456789.00);

INSERT INTO professor (ssn, name, street, city, state, zip, area_code, phone_number, sex, title, salary)
VALUES ('462813045', 'Shawn Wang', '456 Oak Ave', 'Fullerton', 'CA', '92831', '657', '2772360', 'M', 'Doctor', 1234567.00);

INSERT INTO professor (ssn, name, street, city, state, zip, area_code, phone_number, sex, title, salary)
VALUES ('559127634', 'Nicole Traboulsi', '800 N State College Blvd', 'Fullerton', 'CA', '92831', '657', '2787258', 'F', 'Professor', 987654.00);

INSERT INTO professor (ssn, name, street, city, state, zip, area_code, phone_number, sex, title, salary)
VALUES ('569122659', 'John Doe', '456 West St', 'Anaheim', 'CA', '92806', '657', '2747236', 'M', 'Professor', 187374.00);

-- PROFESSOR_DEGREE (multivalued)
INSERT INTO professor_degree (ssn, degree)
VALUES ('215469281', 'M.S. Mathematics');

INSERT INTO professor_degree (ssn, degree)
VALUES ('462813045', 'M.S. Mathematics');

INSERT INTO professor_degree (ssn, degree)
VALUES ('462813045', 'M.S. Computer Science');

INSERT INTO professor_degree (ssn, degree)
VALUES ('462813045', 'Ph.D. Computer Science');

INSERT INTO professor_degree (ssn, degree)
VALUES ('559127634', 'M.S. Computer Science');

INSERT INTO professor_degree (ssn, degree)
VALUES ('569122659', 'B.S. Art');

-- DEPARTMENT (need 2+)
INSERT INTO department (dept_no, name, telephone, office_location, chair_ssn)
VALUES (1, 'Computer Science', '657-278-3701', 'CS 522', '462813045');

INSERT INTO department (dept_no, name, telephone, office_location, chair_ssn)
VALUES (2, 'Mathematics', '657-278-3702', 'MA 342', '215469281');

INSERT INTO department (dept_no, name, telephone, office_location, chair_ssn)
VALUES (3, 'Art', '657-278-3703', 'ART 183', '569122659');

-- COURSE (need 4+)
INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('CPSC131', 'Introduction to Programming', 'Fundamentals of Programming', 3, 1);

INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('CPSC335', 'Algorithms', 'Fundamentals of Algorithms', 3, 1);

INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('CPSC375', 'Big Data', 'Fundamentals of Big Data', 3, 1);

INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('CPSC323', 'Compilers', 'Fundamentals of Compilers', 3, 1);

INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('CPSC332', 'File Structures and Database Systems', 'Fundamentals of Database Systems', 3, 1);

INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('CPSC351', 'Operating Systems', 'Fundamentals of Operating Systems', 3, 1);

INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('CPSC362', 'Software Engineering', 'Fundamentals of Software Engineering', 3, 1);

INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('MATH201', 'Calculus I', 'Fundamentals of Calculus', 4, 2);

INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('MATH202', 'Calculus II', 'Fundamentals of Calculus 2', 4, 2);

INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('MATH203', 'Calculus III', 'Fundamentals of Calculus 3', 4, 2);

INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('MATH101', 'Linear Algebra', 'Fundamentals of Linear Algebra', 3, 2);

INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('MATH102', 'Statistics', 'Fundamentals of Statistics', 3, 2);

INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('ART101', 'Art History', 'Fundamentals of Art History', 3, 3);

INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('ART102', 'Art Appreciation', 'Fundamentals of Art Appreciation', 3, 3);

-- PREREQUISITES
INSERT INTO prerequisite (course_no, prereq_no)
VALUES ('CPSC332', 'CPSC362');

INSERT INTO prerequisite (course_no, prereq_no)
VALUES ('CPSC335', 'CPSC362');

INSERT INTO prerequisite (course_no, prereq_no)
VALUES ('CPSC375', 'CPSC362');

INSERT INTO prerequisite (course_no, prereq_no)
VALUES ('CPSC362', 'CPSC131');

INSERT INTO prerequisite (course_no, prereq_no)
VALUES ('CPSC351', 'CPSC131');

INSERT INTO prerequisite (course_no, prereq_no)
VALUES ('CPSC323', 'CPSC131');

INSERT INTO prerequisite (course_no, prereq_no)
VALUES ('MATH102', 'MATH101');

INSERT INTO prerequisite (course_no, prereq_no)
VALUES ('MATH201', 'MATH101');

INSERT INTO prerequisite (course_no, prereq_no)
VALUES ('MATH202', 'MATH201');

INSERT INTO prerequisite (course_no, prereq_no)
VALUES ('MATH203', 'MATH202');

INSERT INTO prerequisite (course_no, prereq_no)
VALUES ('CPSC323', 'CPSC131');

INSERT INTO prerequisite (course_no, prereq_no)
VALUES ('ART102', 'ART101');

-- SECTION (need 6+)
INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC332', 1, 'CS 104', 30, 'MW', '09:00:00', '10:15:00', '462813045');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC332', 2, 'CS 104', 30, 'TuTh', '09:00:00', '10:15:00', '559127634');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC335', 1, 'CS 201', 35, 'MW', '10:30:00', '11:45:00', '462813045');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC335', 2, 'CS 201', 35, 'TuTh', '10:30:00', '11:45:00', '559127634');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('MATH201', 1, 'MA 101', 40, 'MWF', '09:00:00', '10:10:00', '215469281');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('MATH202', 1, 'MA 102', 40, 'MWF', '10:30:00', '11:40:00', '215469281');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC131', 1, 'CS 202', 35, 'MW', '12:00:00', '13:15:00', '462813045');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC131', 2, 'CS 202', 35, 'TuTh', '12:00:00', '13:15:00', '559127634');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC375', 1, 'CS 202', 35, 'MW', '13:30:00', '14:45:00', '462813045');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC375', 2, 'CS 202', 35, 'TuTh', '13:30:00', '14:45:00', '559127634');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC323', 1, 'CS 202', 35, 'MW', '15:00:00', '16:15:00', '462813045');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC323', 2, 'CS 202', 35, 'TuTh', '15:00:00', '16:15:00', '559127634');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC351', 1, 'CS 202', 35, 'MW', '16:30:00', '17:45:00', '462813045');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC351', 2, 'CS 202', 35, 'TuTh', '16:30:00', '17:45:00', '559127634');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC362', 1, 'CS 202', 35, 'MW', '18:00:00', '19:15:00', '462813045');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC362', 2, 'CS 202', 35, 'TuTh', '18:00:00', '19:15:00', '559127634');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('MATH201', 2, 'MA 101', 40, 'TuTh', '09:00:00', '10:10:00', '215469281');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('MATH202', 2, 'MA 101', 40, 'TuTh', '10:30:00', '11:40:00', '215469281');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('MATH203', 1, 'MA 101', 40, 'MWF', '12:00:00', '13:10:00', '215469281');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('MATH203', 2, 'MA 101', 40, 'TuTh', '12:00:00', '13:10:00', '215469281');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('MATH101', 1, 'MA 101', 40, 'MWF', '13:30:00', '14:40:00', '215469281');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('MATH101', 2, 'MA 101', 40, 'TuTh', '13:30:00', '14:40:00', '215469281');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('MATH102', 1, 'MA 101', 40, 'MWF', '15:00:00', '16:10:00', '215469281');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('MATH102', 2, 'MA 101', 40, 'TuTh', '15:00:00', '16:10:00', '215469281');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('ART101', 1, 'ART 101', 30, 'MW', '09:00:00', '10:15:00', '569122659');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('ART101', 2, 'ART 101', 30, 'TuTh', '09:00:00', '10:15:00', '569122659');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('ART102', 1, 'ART 101', 30, 'MW', '10:30:00', '11:45:00', '569122659');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('ART102', 2, 'ART 101', 30, 'TuTh', '10:30:00', '11:45:00', '569122659');


-- STUDENT (need 8+)
INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000000', 'Maria', 'Lopez', '123 Main St, Fullerton, CA 92831', '714-555-0101', 1);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000001', 'James', 'Smith', '124 Main St, Fullerton, CA 92831', '714-555-0102', 1);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000002', 'Emma', 'Johnson', '125 Main St, Fullerton, CA 92831', '714-555-0103', 2);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000003', 'Noah', 'Williams', '126 Main St, Fullerton, CA 92831', '714-555-0104', 3);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000004', 'Olivia', 'Brown', '127 Main St, Fullerton, CA 92831', '714-555-0105', 1);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000005', 'Liam', 'Davis', '128 Main St, Fullerton, CA 92831', '714-555-0106', 2);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000006', 'Sophia', 'Garcia', '129 Main St, Fullerton, CA 92831', '714-555-0107', 3);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000007', 'Ethan', 'Martinez', '130 Main St, Fullerton, CA 92831', '714-555-0108', 1);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000008', 'Isabella', 'Wilson', '131 Main St, Fullerton, CA 92831', '714-555-0109', 2);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000009', 'Lucas', 'Anderson', '132 Main St, Fullerton, CA 92831', '714-555-0110', 3);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000010', 'Mia', 'Thomas', '133 Main St, Fullerton, CA 92831', '714-555-0111', 1);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000011', 'Mason', 'Taylor', '134 Main St, Fullerton, CA 92831', '714-555-0112', 2);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000012', 'Amelia', 'Moore', '135 Main St, Fullerton, CA 92831', '714-555-0113', 3);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000013', 'Logan', 'Jackson', '136 Main St, Fullerton, CA 92831', '714-555-0114', 1);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000014', 'Charlotte', 'Martin', '137 Main St, Fullerton, CA 92831', '714-555-0115', 2);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000015', 'Aiden', 'Lee', '138 Main St, Fullerton, CA 92831', '714-555-0116', 3);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000016', 'Harper', 'Perez', '139 Main St, Fullerton, CA 92831', '714-555-0117', 1);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000017', 'Elijah', 'Thompson', '140 Main St, Fullerton, CA 92831', '714-555-0118', 2);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000018', 'Evelyn', 'White', '141 Main St, Fullerton, CA 92831', '714-555-0119', 3);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000019', 'Benjamin', 'Harris', '142 Main St, Fullerton, CA 92831', '714-555-0120', 1);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000020', 'Abigail', 'Clark', '143 Main St, Fullerton, CA 92831', '714-555-0121', 2);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000021', 'Daniel', 'Lewis', '144 Main St, Fullerton, CA 92831', '714-555-0122', 3);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000022', 'Emily', 'Nguyen', '145 Main St, Fullerton, CA 92831', '714-555-0123', 1);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000023', 'Henry', 'Patel', '146 Main St, Fullerton, CA 92831', '714-555-0124', 2);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000024', 'Elizabeth', 'Kim', '147 Main St, Fullerton, CA 92831', '714-555-0125', 3);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000025', 'Michael', 'Chen', '148 Main St, Fullerton, CA 92831', '714-555-0126', 1);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000026', 'Sofia', 'Ramirez', '149 Main St, Fullerton, CA 92831', '714-555-0127', 2);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000027', 'Alexander', 'Torres', '150 Main St, Fullerton, CA 92831', '714-555-0128', 3);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000028', 'Avery', 'Scott', '151 Main St, Fullerton, CA 92831', '714-555-0129', 1);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000029', 'David', 'Green', '152 Main St, Fullerton, CA 92831', '714-555-0130', 2);


-- STUDENT_MINOR
INSERT INTO student_minor (cwid, dept_no)
VALUES ('100000000', 2);

INSERT INTO student_minor (cwid, dept_no)
VALUES ('100000005', 1);

INSERT INTO student_minor (cwid, dept_no)
VALUES ('100000005', 3);

INSERT INTO student_minor (cwid, dept_no)
VALUES ('100000006', 2);

INSERT INTO student_minor (cwid, dept_no)
VALUES ('100000007', 3);


-- ENROLLMENT (need 20+)
INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000000', 'CPSC332', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000001', 'CPSC332', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000002', 'CPSC332', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000003', 'CPSC332', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000004', 'CPSC332', 1, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000005', 'CPSC332', 2, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000006', 'CPSC332', 2, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000007', 'CPSC332', 2, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000008', 'CPSC332', 2, 'D');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000000', 'CPSC335', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000001', 'CPSC335', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000002', 'CPSC335', 1, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000003', 'CPSC335', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000005', 'CPSC335', 2, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000006', 'CPSC335', 2, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000007', 'CPSC335', 2, 'F');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000009', 'MATH201', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000010', 'MATH201', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000011', 'MATH201', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000012', 'MATH201', 1, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000000', 'CPSC131', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000001', 'CPSC375', 2, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000002', 'CPSC351', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000003', 'CPSC362', 2, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000004', 'ART101', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000004', 'ART102', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000005', 'ART102', 2, 'D');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000006', 'CPSC375', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000007', 'CPSC323', 2, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000008', 'CPSC362', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000008', 'MATH203', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000009', 'MATH203', 2, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000009', 'ART101', 1, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000010', 'ART102', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000010', 'CPSC131', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000011', 'CPSC131', 2, 'D');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000011', 'CPSC375', 1, 'D');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000012', 'CPSC323', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000012', 'CPSC351', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000013', 'CPSC351', 2, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000013', 'CPSC362', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000013', 'MATH203', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000014', 'MATH203', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000014', 'ART101', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000014', 'ART102', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000015', 'ART101', 2, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000015', 'ART102', 1, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000015', 'CPSC131', 1, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000016', 'CPSC131', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000016', 'CPSC375', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000016', 'CPSC323', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000017', 'CPSC375', 2, 'D');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000017', 'CPSC323', 1, 'D');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000017', 'CPSC351', 1, 'D');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000018', 'CPSC351', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000018', 'CPSC362', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000018', 'MATH203', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000019', 'CPSC362', 2, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000019', 'MATH203', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000019', 'ART101', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000020', 'ART101', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000020', 'ART102', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000020', 'CPSC131', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000021', 'ART102', 2, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000021', 'CPSC131', 1, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000021', 'CPSC375', 1, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000022', 'CPSC375', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000022', 'CPSC323', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000022', 'CPSC351', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000023', 'CPSC323', 2, 'D');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000023', 'CPSC351', 1, 'D');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000023', 'CPSC362', 1, 'D');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000024', 'CPSC362', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000024', 'MATH203', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000024', 'ART101', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000025', 'MATH203', 2, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000025', 'ART101', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000025', 'ART102', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000026', 'ART102', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000026', 'CPSC131', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000026', 'CPSC375', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000027', 'CPSC131', 2, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000027', 'CPSC375', 1, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000027', 'CPSC323', 1, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000028', 'CPSC323', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000028', 'CPSC351', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000028', 'CPSC362', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000029', 'CPSC351', 2, 'D');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000029', 'CPSC362', 1, 'D');

INSERT INTO enrollment (cwid, course_no, section_no, grade)
VALUES ('100000029', 'MATH203', 1, 'D');
