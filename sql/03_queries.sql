-- interface queries

-- For the Professors
-- Query A
-- Given the social security number of a professor, list the titles, classrooms, meeting days and time of his/her classes.
SELECT course.title, section.classroom, section.meeting_days, section.begin_time 
FROM professor, course, section 
WHERE professor.ssn = section.prof_ssn AND section.course_no = course.course_no;

-- Query B
-- Given a course number and a section number, count how many students get each distinct grade, i.e. ‘A’, ‘A-’, ‘B+’, ‘B’, ‘B-’, etc.
SELECT grade, COUNT(*) AS num_students
FROM enrollment
WHERE course_no = 'CS101' AND section_no = 1
GROUP BY grade;

-- For the Students
-- Query A
-- Given a course number list the sections of the course, including the classrooms, the meeting days and time, and the number of students enrolled in each section.

-- Query B
-- Given the campus wide ID of a student, list all courses the student took and the grades.