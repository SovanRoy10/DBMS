-- Mysql views

create view view1 as 
select id , first_name , marks from student;

select * from view1;

drop view view1;