/* ---------------------- Foreign Key ------------------------------ */
USE college;

/* CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE teacher (
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
);
*/

/* ----------------- Cascading for FK----------------------- */


CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE teacher (
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON DELETE CASCADE
ON UPDATE CASCADE
);

INSERT INTO dept VALUES (101,"English");
INSERT INTO dept VALUES (102,"Maths");

select * from dept;

INSERT INTO teacher VALUES (101,"Shamik",102);
INSERT INTO teacher VALUES (102,"Raja",102);
INSERT INTO teacher VALUES (103,"Soumili",101);
INSERT INTO teacher VALUES (104,"Rahi",101);

select * from teacher;

UPDATE dept 
SET id = 103
WHERE id = 101;

/*------------------------ Alter----------------------------- */
ALTER TABLE student
ADD column age INT NOT NULL default 19;

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student
CHANGE COLUMN age AGE INT;

ALTER TABLE student
modify AGE VARCHAR(3);

ALTER TABLE student
RENAME TO stu;

select * from stu;

ALTER TABLE stu
RENAME TO student;

select * from student;

/* ------------truncate -------------------- */
/* Drop: deletes entire table
Truncate: deletes the data of the table, but does not delete the table
*/

/* --------- practice question --------------- */
ALTER TABLE student
CHANGE COLUMN name first_name VARCHAR(50);

DELETE FROM student
WHERE marks <70;

ALTER TABLE student
DROP COLUMN grade;
