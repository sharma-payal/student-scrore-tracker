--Level-4
--1.  WHEN case

SELECT name, marks,
       CASE 
           WHEN marks >= 90 THEN 'Excellent'
           WHEN marks >= 75 THEN 'Good'
           ELSE 'Needs Improvement'
       END AS performance
FROM students;


--2. SUBQUERY

SELECT name, marks FROM students WHERE marks > (SELECT AVG(marks) FROM students));


--3. IN query (Instead of OR)

SELECT * FROM students WHERE course IN ('SQL', 'Python')

--4. BETWEEN 

SELECT * FROM students WHERE marks BETWEEN 70 AND 90;

--5. LIKE query

SELECT * FROM students WHERE name LIKE 'P%' 
SELECT * FROM students WHERE name LIKE '%a'
SELECT * FROM students WHERE name LIKE '%ay%'


---LEVEL 5 

--1.ROW_NUMBER()

SELECT name, marks, ROW_NUMBER OVER (ORDER BY marks DESC) AS row_num FROM students;

--2. RANK()

SELECT name, marks, ROW() OVER(ORDER BY marks DESC) AS student_rank FROM students;

--3. DENSE_RANK()

SELECT name, marks, DENSE_RANK() OVER (ORDER BY marks DESC) AS dense_rank FROM students;

--4. PARTITION BY

SELECT name, course, marks, RANK() OVER (PARTITION BY course ORDER BY marks DESC) AS course_student FROM students;


