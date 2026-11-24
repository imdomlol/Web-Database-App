-- interface queries

-- Query A
SELECT course.title, section.classroom, section.meeting_days, section.begin_time 
FROM professor, course, section 
WHERE professor.ssn = section.prof_ssn AND section.course_no = course.course_no;
