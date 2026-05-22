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



