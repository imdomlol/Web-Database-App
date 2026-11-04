-- 00_drop.sql
-- Wipes every table so 01_schema.sql can rebuild from scratch.
-- Tables are dropped children first so foreign keys shouldn't be an issue

DROP TABLE IF EXISTS enrollment;
DROP TABLE IF EXISTS student_minor;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS section;
DROP TABLE IF EXISTS prerequisite;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS professor_degree;
DROP TABLE IF EXISTS professor;