/*#1
select cno, cname
from course
where teacher = "程军";

#2
select sno,sname
from student
where sage>21;

#3
select sname
from student, course, sc
where student.sno = sc.sno
	and course.cno = sc.cno
    and 

#4

#5

#6

#7

#8

#9

#10

#11
*/
use review_oh;
select * from student;
/*
create view CS_student_1(no, name, sex, age)
as
select Sno, Sname, Ssex, Sage
from student
where Sdept = 'CS';

create view CS_student_2
as
select Sno, Sname, Ssex, Sage
from student
where Sdept = 'CS'
with check option;

select * from CS_student_1;*/

create role r1;