/* --------------- Joins in SQL---------------------- */
CREATE TABLE students(
id INT PRIMARY KEY,
name varchar(50)
);

insert into students (id, name) values (101,"adam");
insert into students (id, name) values (102,"bob");
insert into students (id, name) values (103,"casey");

CREATE TABLE course(
id INT PRIMARY KEY,
course varchar(50)
);

insert into course (id, course) values (102,"english");
insert into course (id, course) values (105,"math");
insert into course (id, course) values (103,"sceience");
insert into course (id, course) values (107,"computer science");

/* ----------inner join--------------------*/
select * from students
inner join course 
on students.id = course.id;

-- using alias
select * from students as s
inner join course as c
on s.id = c.id;

/* ----------left join--------------------*/

select * from students as s
left join course as c
on s.id = c.id;

/* ----------right join--------------------*/

select * from students as s
right join course as c
on s.id = c.id;

/* ----------full join--------------------*/

select * from students as s
left join course as c
on s.id = c.id
union
select * from students as s
right join course as c
on s.id = c.id;

/* ----------left exclusive join--------------------*/
select * from students as s
left join course as c
on s.id = c.id
where c.id is null;

/* ----------right exclusive join--------------------*/
select * from students as s
right join course as c
on s.id = c.id
where s.id is null;

/* ----------full exclusive join--------------------*/
select * from students as s
left join course as c
on s.id = c.id
where c.id is null
union
select * from students as s
right join course as c
on s.id = c.id
where s.id is null;

/* ----------self join--------------------*/
select * from students as s1
join students as s2
on s1.id = s2.id;


CREATE TABLE employee(
id INT PRIMARY KEY,
name varchar(50),
manager_id INT
);

INSERT INTO employee(id,name,manager_id)
values
(101, "adam", 103),
(102,"bob",104),
(103,"casey",null),
(104,"donald",103);

select a.name as manager_id , b.name 
from employee as a
join employee as b
on a.id= b.manager_id;

select * from employee;

/* ----------- union- ---------------- */
-- union : without any duplicates
select * from employee
union
select * from employee;

/* ----------- union all- ---------------- */
-- union : with duplicates
select * from employee
union all
select * from employee;