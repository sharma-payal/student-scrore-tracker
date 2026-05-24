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


---LEVEL 6

--1.CREATE PAYMENT TABLE

CREATE TABLE payments(payment_id INT PRIMARY KEY, student_id INT, amount INT, payment_status INT, payment_date INT);

--2. INSERT Data Values

INSERT INTO payments VALUES (1,1,500,'Succeed','2026-01-10'),(2,2,700,'Succeed', '26-01-11'),(3,3,400,'Failed','26-01-12'),(4,4,800,'Succeed','26-01-13'),(5,5,900,'Failed','26-01-14');

--3. TOTAL REVENUE

SELECT SUM(amount) AS total_revenue FROM payments WHERE payment_status = 'Succeed';

--4. FAILED PAYMENTS

SELECT * FROM payments WHERE payment_status = 'Failed';

--5. High Payments

SELECT * FROM payments WHERE amount > 500;

--6. CUSTOMER PAYMENTS ANALYTICS

SELECT student_id, SUM(amount) AS student_spent FROM payments GROUP BY student_id;


--7. JOIN students + payments


SELECT students.name, payments.amount,payments.payment_status FROM students INNER JOIN payments WHERE students.student_id = payments.student_id;

--8. Business Query -- Fraud-LIKE-Detection

SELECT * FROM payments WHERE payment_status = 'Failed' AND amount > 500;


--9. Daily Revenue

SELECT payment_date, SUM(amount) AS daily_revenue FROM payments WHERE payment_status = 'Succeed'


   

