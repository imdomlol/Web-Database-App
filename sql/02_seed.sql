-- 02_seed.sql
-- Sample records minimum reqs:
-- students 8, departments 2, professors 3
-- courses 4, sections 6, enrollments 20


--Professor 
INSERT INTO professor (ssn, name, street, city, state, zip, area_code, phone_number, sex, title, salary)
VALUES ('215469281', 'Mansour Abdoli', '123 Main St', 'Fullerton', 'CA', '92831', '657', '2757259', 'M', 'Professor', 456789.00);

INSERT INTO professor (ssn, name, street, city, state, zip, area_code, phone_number, sex, title, salary)
VALUES ('462813045', 'Shawn Wang', '456 Oak Ave', 'Fullerton', 'CA', '92831', '657', '2772360', 'M', 'Doctor', 1234567.00);

INSERT INTO professor (ssn, name, street, city, state, zip, area_code, phone_number, sex, title, salary)
VALUES ('559127634', 'Nicole Traboulsi', '800 N State College Blvd', 'Fullerton', 'CA', '92831', '657', '2787258', 'F', 'Professor', 987654.00);


--Professor Degree
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



--Department
INSERT INTO department (dept_no, name, telephone, office_location, chair_ssn)
VALUES (1, 'Computer Science', '657-278-3701', 'CS 522', '462813045');

INSERT INTO department (dept_no, name, telephone, office_location, chair_ssn)
VALUES (2, 'Mathematics', '657-278-3702', 'MA 342', '215469281');


--Course
INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('CPSC131', 'Introduction to Programming', 'Fundamentals of Programming', 3, 1);

INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('CPSC335', 'Algorithms', 'Fundamentals of Algorithms', 3, 1);

INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('CPSC375', 'Big Data', 'Fundamentals of Big Data', 3, 1);

INSERT INTO course (course_no, title, textbook, units, dept_no)
VALUES ('MATH101', 'Linear Algebra', 'Fundamentals of Linear Algebra', 3, 2);



--Prerequisites 
INSERT INTO prerequisite (course_no, prereq_no) VALUES ('CPSC335', 'CPSC131');
INSERT INTO prerequisite (course_no, prereq_no) VALUES ('CPSC375', 'CPSC131');

--Section
INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC335', 1, 'CS 201', 35, 'MW', '10:30:00', '11:45:00', '462813045');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC335', 2, 'CS 201', 35, 'TuTh', '10:30:00', '11:45:00', '559127634');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC131', 1, 'CS 202', 35, 'MW', '12:00:00', '13:15:00', '462813045');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC131', 2, 'CS 202', 35, 'TuTh', '12:00:00', '13:15:00', '559127634');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('CPSC375', 1, 'CS 202', 35, 'MW', '13:30:00', '14:45:00', '462813045');

INSERT INTO section (course_no, section_no, classroom, seats, meeting_days, begin_time, end_time, prof_ssn)
VALUES ('MATH101', 2, 'MA 101', 40, 'TuTh', '13:30:00', '14:40:00', '215469281');


--Student 
INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000000', 'Maria', 'Lopez', '123 Main St, Fullerton, CA 92831', '714-555-0101', 1);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000001', 'James', 'Smith', '124 Main St, Fullerton, CA 92831', '714-555-0102', 1);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000002', 'Emma', 'Johnson', '125 Main St, Fullerton, CA 92831', '714-555-0103', 2);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000003', 'Noah', 'Williams', '126 Main St, Fullerton, CA 92831', '714-555-0104', 2);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000004', 'Olivia', 'Brown', '127 Main St, Fullerton, CA 92831', '714-555-0105', 1);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000005', 'Liam', 'Davis', '128 Main St, Fullerton, CA 92831', '714-555-0106', 2);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000006', 'Sophia', 'Garcia', '129 Main St, Fullerton, CA 92831', '714-555-0107', 1);

INSERT INTO student (cwid, first_name, last_name, address, telephone, major_dept_no)
VALUES ('100000007', 'Ethan', 'Martinez', '130 Main St, Fullerton, CA 92831', '714-555-0108', 1);



--Student
INSERT INTO student_minor (cwid, dept_no)
VALUES ('100000000', 2);

INSERT INTO student_minor (cwid, dept_no)
VALUES ('100000005', 1);




--Enrollment 
INSERT INTO enrollment (cwid, course_no, section_no, grade) 
VALUES ('100000000', 'CPSC131', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade) 
VALUES ('100000001', 'CPSC131', 1, 'D');

INSERT INTO enrollment (cwid, course_no, section_no, grade) 
VALUES ('100000002', 'CPSC131', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade) 
VALUES ('100000003', 'CPSC131', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade) 
VALUES ('100000004', 'CPSC131', 2, 'F');

INSERT INTO enrollment (cwid, course_no, section_no, grade) 
VALUES ('100000005', 'CPSC131', 2, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade) 
VALUES ('100000006', 'CPSC131', 2, 'B');

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
VALUES ('100000007', 'CPSC335', 2, 'C');

INSERT INTO enrollment (cwid, course_no, section_no, grade) 
VALUES ('100000000', 'CPSC375', 1, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade) 
VALUES ('100000004', 'CPSC375', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade) 
VALUES ('100000007', 'CPSC375', 1, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade) 
VALUES ('100000001', 'MATH101', 2, 'A');

INSERT INTO enrollment (cwid, course_no, section_no, grade) 
VALUES ('100000002', 'MATH101', 2, 'B');

INSERT INTO enrollment (cwid, course_no, section_no, grade) 
VALUES ('100000005', 'MATH101', 2, 'B');
