CREATE DATABASE student_tracker;
USE student_tracker;
CREATE TABLE students (id INT PRIMARY KEY, name VARVHAR(50, course VARCHAR(50, marks INT);
INSERT INTO students VALUES (1, Payal, SQL, 88), (2, Surbhi, Python, 76), (3, Dravid, Analytics, 91);

SELECT * FROM students;

SELECT name, marks FROM students WHERE marks > 80;

SELECT AVG(marks) AS average_marks FROM students;

SELECT * FROM students ORDER BY marks DESC;

SELECT * FROM students ORDER BY marks DESC LIMIT1;

SELECT COUNT(*) AS total_students FROM students
-- PRACTICE SQL - LEVEL 1

--1. SELECT (basic read)
-- Select all from student
SELECT * FROM students;

-- Select names only from students

SELECT name FROM students;

--2. WHERE(Filtering)
SELECT * FROM students WHERE marks > 80;

--select the particular course
SELECT * FROM students WHERE course = 'Python'

--3. ORDER BY (Sorting)
SELECT * FROM students ORDER BY marks DESC;
SELECT * FROM students ORDER BY name ASC;

--4 LIMIT (TOP RESULTS)
SELECT * FROM students ORDER BY marks DESC LIMIT 1;
