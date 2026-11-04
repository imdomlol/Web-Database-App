-- 01_schema.sql
-- Creates the database schema with tables, primary keys, foreign keys, etc

-- PROFESSOR
CREATE TABLE professor (
    ssn           CHAR(9)        NOT NULL,
    name          VARCHAR(60)    NOT NULL,
    street        VARCHAR(80)    NOT NULL,
    city          VARCHAR(40)    NOT NULL,
    state         CHAR(2)        NOT NULL,
    zip           CHAR(5)        NOT NULL,
    area_code     CHAR(3)        NOT NULL,
    phone_number  CHAR(7)        NOT NULL,
    sex           CHAR(1)        NOT NULL,
    title         VARCHAR(40)    NOT NULL,
    salary        DECIMAL(10,2)  NOT NULL,
    -- each professor is identified by social security number
    PRIMARY KEY (ssn)
);

--  "College Degree's" is a multivalued attribute
CREATE TABLE professor_degree (
    ssn     CHAR(9)      NOT NULL,
    degree  VARCHAR(60)  NOT NULL,
    -- college degrees is multivalued
    PRIMARY KEY (ssn, degree),
    -- each degree belongs to a professor
    CONSTRAINT fk_degree_prof FOREIGN KEY (ssn)
        REFERENCES professor (ssn)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- DEPARTMENT
CREATE TABLE department (
    dept_no          INT          NOT NULL,
    name             VARCHAR(60)  NOT NULL,
    telephone        VARCHAR(12)  NOT NULL,
    office_location  VARCHAR(40)  NOT NULL,
    chair_ssn        CHAR(9)      NOT NULL,
    -- "each department has a unique number"
    PRIMARY KEY (dept_no),
    -- chairperson is 1:1 
    -- TODO:
    -- (i just assumed this after googling if they can be a chair of multiple departments, and it seems they can't usually)
    -- (maybe confirm?)
    CONSTRAINT uq_dept_chair UNIQUE (chair_ssn),
    -- "a chairperson who is a professor"
    CONSTRAINT fk_dept_chair FOREIGN KEY (chair_ssn)
        REFERENCES professor (ssn)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

-- COURSE
CREATE TABLE course (
    course_no  VARCHAR(10)   NOT NULL,
    title      VARCHAR(80)   NOT NULL,
    textbook   VARCHAR(120)  NOT NULL,
    units      TINYINT       NOT NULL,
    dept_no    INT           NOT NULL,
    -- "each course has a unique number"
    PRIMARY KEY (course_no),
    -- "each course is offered by a department" N:1
    CONSTRAINT fk_course_dept FOREIGN KEY (dept_no)
        REFERENCES department (dept_no)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

-- M:N course_no requires prereq_no
CREATE TABLE prerequisite (
    course_no  VARCHAR(10)  NOT NULL,
    prereq_no  VARCHAR(10)  NOT NULL,
    -- "each course also has a set of prerequisite courses" M:N on course
    PRIMARY KEY (course_no, prereq_no),
    -- "the course that has the prerequisite"
    CONSTRAINT fk_prereq_course FOREIGN KEY (course_no)
        REFERENCES course (course_no)
        ON DELETE CASCADE ON UPDATE CASCADE,
    -- "the prerequisite is itself a course"
    CONSTRAINT fk_prereq_prereq FOREIGN KEY (prereq_no)
        REFERENCES course (course_no)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- SECTION (weak entity, owner = course)
CREATE TABLE section (
    course_no     VARCHAR(10)  NOT NULL,
    section_no    INT          NOT NULL,
    classroom     VARCHAR(20)  NOT NULL,
    seats         INT          NOT NULL,
    meeting_days  VARCHAR(10)  NOT NULL,   -- ex 'MW', 'TuTh', 'MWF', etc.
    begin_time    TIME         NOT NULL,
    end_time      TIME         NOT NULL,
    prof_ssn      CHAR(9)      NOT NULL,
    -- "a section number that is unique within the course"
    PRIMARY KEY (course_no, section_no),
    -- "each course may have several sections"
    CONSTRAINT fk_section_course FOREIGN KEY (course_no)
        REFERENCES course (course_no)
        ON DELETE CASCADE ON UPDATE CASCADE,
    -- "each section is taught by a professor" N:1
    CONSTRAINT fk_section_prof FOREIGN KEY (prof_ssn)
        REFERENCES professor (ssn)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

-- STUDENT
CREATE TABLE student (
    cwid           CHAR(9)       NOT NULL,
    first_name     VARCHAR(30)   NOT NULL,
    last_name      VARCHAR(30)   NOT NULL,
    address        VARCHAR(120)  NOT NULL,
    telephone      VARCHAR(12)   NOT NULL,
    major_dept_no  INT           NOT NULL,
    -- "students are identified by campus wide ID"
    PRIMARY KEY (cwid),
    -- "each student majors in one department" N:1
    CONSTRAINT fk_student_major FOREIGN KEY (major_dept_no)
        REFERENCES department (dept_no)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

-- M:N a student can minor in multiple departments
CREATE TABLE student_minor (
    cwid     CHAR(9)  NOT NULL,
    dept_no  INT      NOT NULL,
    -- "may minor in several departments" M:N
    PRIMARY KEY (cwid, dept_no),
    -- student who has the minor
    CONSTRAINT fk_minor_student FOREIGN KEY (cwid)
        REFERENCES student (cwid)
        ON DELETE CASCADE ON UPDATE CASCADE,
    -- dept the minor is in
    CONSTRAINT fk_minor_dept FOREIGN KEY (dept_no)
        REFERENCES department (dept_no)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- ENROLLMENT (M:N student <-> section, relationship attribute = grade)
CREATE TABLE enrollment (
    cwid        CHAR(9)      NOT NULL,
    course_no   VARCHAR(10)  NOT NULL,
    section_no  INT          NOT NULL,
    grade       VARCHAR(2)   NOT NULL,
    -- "each record has a student, a course section, and a grade"
    PRIMARY KEY (cwid, course_no, section_no),
    -- enrolled student
    CONSTRAINT fk_enroll_student FOREIGN KEY (cwid)
        REFERENCES student (cwid)
        ON DELETE CASCADE ON UPDATE CASCADE,
    -- the course section (composite key, section is weak)
    CONSTRAINT fk_enroll_section FOREIGN KEY (course_no, section_no)
        REFERENCES section (course_no, section_no)
        ON DELETE CASCADE ON UPDATE CASCADE
);
