/* ------------------ create and drop database------------------ */
CREATE DATABASE temp1;
DROP 
  DATABASE temp1;
/* --------------------------Example----------------------------- */
CREATE DATABASE XYZ;
USE XYZ;
CREATE TABLE employee(
  id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary INT DEFAULT 25000
);

INSERT INTO employee (id,name) VALUES (1,"adam");
INSERT INTO employee VALUES (2,"bob",30000);
INSERT INTO employee VALUES (3,"adam",40000);

SELECT * FROM employee;

/* -----------------------Example---------------------------- */
CREATE DATABASE college;
USE college;
CREATE TABLE student (
  id INT PRIMARY KEY, 
  name VARCHAR(50), 
  marks INT NOT NULL, 
  grade VARCHAR(1), 
  city VARCHAR(20)
);
INSERT INTO student 
VALUES 
  (1, "Sovan", 99, "A", "Kolkata");
INSERT INTO student 
VALUES 
  (2, "Priti", 100, "A", "Kolkata");
INSERT INTO student 
VALUES 
  (102, "Bhumika", 93, "A", "Mumbai");
INSERT INTO student 
VALUES 
  (103, "Chetan", 85, "B", "Mumbai");
INSERT INTO student 
VALUES 
  (106, "Dhruv", 12, "F", "Delhi");
INSERT INTO student 
VALUES 
  (105, "Farah", 82, "B", "Delhi");
  
SELECT 
  * 
FROM 
  student;
 /* ----------------------Where Clause-------------------------- */ 
SELECT 
  name, 
  marks 
FROM 
  student;
  
SELECT 
  city 
FROM 
  student;
  
SELECT 
  DISTINCT city 
FROM 
  student;
  
SELECT 
  * 
FROM 
  student 
WHERE 
  marks > 80;
  
SELECT 
  * 
FROM 
  student 
WHERE 
  city = "Kolkata";
  
SELECT 
  * 
FROM 
  student 
WHERE 
  city = "Kolkata" 
  AND marks > 80;
  
SELECT 
  * 
FROM 
  student 
WHERE 
  city = "Kolkata" 
  OR marks > 80;
  
SELECT 
  * 
FROM 
  student 
WHERE 
  marks + 10 > 100;
  
SELECT 
  * 
FROM 
  student 
WHERE 
  marks = 100;

/* ------------------------------------------------------------------- */
SELECT 
  * 
FROM 
  student 
WHERE 
  marks BETWEEN 80 AND 90;
  
SELECT 
  * 
FROM 
  student 
WHERE 
  city IN ("Delhi","Mumbai");
  
SELECT 
  * 
FROM 
  student 
WHERE 
  city NOT IN ("Delhi","Mumbai");
  
/* -----------------Limit and Order by-------------------------- */

SELECT * FROM student LIMIT 3;

SELECT * FROM student ORDER BY marks ASC;
SELECT * FROM student ORDER BY marks DESC;

SELECT * FROM student ORDER BY marks DESC LIMIT 3;

/* -------------Aggregate Functions---------- */


SELECT max(marks) FROM student; -- finding maximum marks 
SELECT min(marks) FROM student; -- finding minimum marks 
SELECT count(*) FROM student; -- columns
SELECT sum(marks) FROM student;  -- sum of marks
SELECT avg(marks) FROM student;  -- AVG OF MARKS

/* ----------------------Group By Clause----------------------------- */

SELECT city , count(name) FROM student GROUP BY city; -- It collects data from multiple records and groups the result by one or more column.
SELECT city ,name, count(name) FROM student GROUP BY city,name; 
SELECT city , avg(marks) FROM student GROUP BY city ORDER BY avg(marks) DESC;  -- avg marks in each city

SELECT grade , count(id) FROM student GROUP BY grade;

/* ----------------------Practice Questions of Group By----------------------------- */

CREATE TABLE payment(
customer_id INT PRIMARY KEY,
customer VARCHAR(50) NOT NULL,
mode VARCHAR(20) NOT NULL,
city VARCHAR(20) NOT NULL
);

INSERT INTO payment VALUES (101, "Ava Lee", "PayPal", "New York");
INSERT INTO payment VALUES (102, "Liam Chen", "Debit Card", "Los Angeles");
INSERT INTO payment VALUES (103, "Sophia Patel", "Credit Card", "Chicago");
INSERT INTO payment VALUES (104, "Mia Kim", "NetBanking", "San Francisco");
INSERT INTO payment VALUES (105, "Ethan Hall", "Cash", "Dallas");
INSERT INTO payment VALUES (106, "Isabella Garcia", "Mobile Payment", "Houston");
INSERT INTO payment VALUES (107, "Oliver Brown", "Bank Transfer", "Philadelphia");
INSERT INTO payment VALUES (108, "Charlotte Davis", "Credit Card", "Phoenix");
INSERT INTO payment VALUES (109, "Benjamin White", "Debit Card", "San Antonio");
INSERT INTO payment VALUES (110, "Abigail Martin", "NetBanking", "San Diego");

SELECT * FROM payment;
-- for the given table find the total payment according to each payment method
SELECT mode , count(customer) FROM payment GROUP BY mode;

/* --------------------------Having Clause--------------------------- */

-- count number of students in each city where max marks cross 90.
SELECT city , count(id) FROM student GROUP BY city HAVING max(marks) > 90; 
SELECT city , count(id) FROM student WHERE grade="A" GROUP BY city HAVING max(marks) > 90; 
select * from student;


/* --------------TABLE RELATED QUERIES--------------------- */

-- Update (to update existing rows)
UPDATE student 
SET grade = "O" 
WHERE grade = "A" ;

UPDATE student 
SET marks = 15 
WHERE id = 104 ;

UPDATE student 
SET marks = marks-1;

UPDATE student 
SET marks = marks+1;

--  Delete (to delete existing rows)
DELETE FROM student
WHERE marks <15;