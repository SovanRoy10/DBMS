/* ----------------------- sub query --------------------- */

-- get names of all students who scored more than class average
select avg(marks)
from student;

select first_name
from student
where marks > 91.800;

-- sub query
select first_name
from student
where marks > (select avg(marks) from student);

-- find the names of all students with even roll numbers

select id 
from student
where id % 2 = 0;

select * from student 
where id in (select id from student where id % 2 = 0);

-- find the max marks from the students of kolkata
select id from student where city = "Kolkata";

select max(marks)
from student 
where id in (select id from student where city = "Kolkata");

select max(marks)
from (select * from student where city = "Delhi") as temp;

