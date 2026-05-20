CREATE DATABASE student_tracker;
USE student_tracker;
CREATE TABLE students (id INT PRIMARY KEY, name VARVHAR(50, course VARCHAR(50, marks INT);
INSERT INTO students VALUES (1, Payal, SQL, 88), (2, Surbhi, Python, 76), (3, Dravid, Analytics, 91);

SELECT * FROM students;

SELECT name, marks FROM students WHERE marks > 80;

SELECT AVG(marks) AS average_marks FROM students;

SELECT * FROM students ORDER BY marks DESC;

