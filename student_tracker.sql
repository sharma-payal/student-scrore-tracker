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



---PRACTICE SQL LEVEL 2(AGGREGATION)

--1. COUNT(count rows in a table)
SELECT COUNT(*) AS total_count FROM students;

--2. SUM()
SELECT SUM(marks) AS total_marks FROM students;

--3. AVEREAGE()
SELECT AVG(marks) AS average_marks FROM students;

--4.MIN/MAX
SELECT MIN(marks) AS lowest_marks FROM students;
SELECT MAX(marks) AS highest_marks FROM students;

--GROUP BY (Most important)
--5. Marks per course(Grou[ps students by course and calculate the average of marks)
SELECT course AVG(marks) AS average_marks FROM students GROUP BY course;

--6.Count per course (count students per course)
SELECT course COUNT(*) AS students_count FROM students GROUP BY course;



--HAVING (FILTER GROUPS - Interview Favourite)

--7. SELECT course AVG(marks) AS average_marks FROM students GROUP BY course HAVING AVG(marks) > 80;



---Sql Practice LEVEL 3 
--1. CREATE TABLE - COURSE

CREATE TABLE course ( course_id INT PRIMARY KEY, course_name VARCHAR(50), instructor VARCHAR(50));


--2. Insert Data in the Table course

INSERT INTO course VALUES((101, 'SQL', 'John'), (102, 'Python', 'Payal'),(103, 'Analytics', 'Besu'));


--3. ALTER table (Very imp)

ALTER TABLE students ADD course_id INT;


--4. UPDATE ROWS students

UPDATE students SET course_id = 101 WHERE id = 1;
UPDATE students SET course_id = 102 WHERE id = 2;
UPDATE students SET course_id = 103 WHERE id = 3;


--5. INNER JOINS(very important)

SELECT students.name, students.marks, course.course_name, course.instrcutor FROM students INNER JOIN course ON students.course_id = course.course_id;


--6. LEFT JOINS(very important)

SELECT students.name, course.course_name FROM students INNER JOIN ON students.course_id = course.course_id;

