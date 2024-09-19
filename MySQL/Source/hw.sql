select * from student;
select * from course;
select * from sc;

/*select count(*) from sc, student where sc.sno = student.sno and cno = '2';
select a.cno, a.cname from course a, course b where b.cno = a.cpno and b.cname = '数据库';
select * from course a, course b where b.cno = a.cpno;
select student.sno, sname, sdept from student, sc where student.sno = sc.sno and sc.cno = '2';
select student.sno, sname, sdept from student where sno in (select sno from sc where sc.cno = '2');
select b.cno, b.cname, b.ccredit from course a, course b where b.cno = a.cpno;
#select student.sno, sname, cname, grade from student, sc, course where student.sno = sc.sno and sc.cno = course.cno and order by 
select student.sno, sname, sdept from student where sno not in (
	select sc.sno from course, sc where course.cno = sc.cno and course.cname = '数据库');
    select student.sname, student.sno from student, sc where sc.sno = student.sno group by sc.sno having count(*) = 1;
select student.sno, student.sname, cname, grade from student, sc, course where student.sno = sc.sno and sc.cno = course.cno and student.name = user();
select student.sname, student.sno from student, sc where sc.sno = student.sno group by sc.sno having count(*) = 0;
select student.sname, student.sno from student where student.sno in 
(select sno from sc group by sc.sno having count(*) = 0);
select * from student where sdept in (select sdept from student where sname = '李勇');
select sname, sage from student where sdept not in (select sdept from student where sname = '李勇') and sage <= (select sage from student where sname = '李勇');
select student.sno from sc, student where student.sno = sc.sno and (sc.cno = '1' or sdept='MA');
insert into student values ('201215129', 'idot', '男', 20, 'CS');
create view student_ha(cname, grade) as select course.cname, sc.grade from student, sc, course  where sc.sno = student.sno and sc.cno = course.cno;
update student_ha set grade = grade+5 where cname='数据库';
create view student_hahaha(sdept, grade, cname) as select sdept, grade, cname from student, sc, course  where sc.sno = student.sno and sc.cno = course.cno;
update student_hahaha set grade = 0 where cname='数据库' and sdept='CS';
delete a from sc a, (select sc.sno from student, sc where sc.sno = student.sno and sname='刘晨') b where a.sno = b.sno;
create view info as select sno, sname, sage from student where sdept = 'MA';
create view grad(sno,sname,sdept,av,su) as select student.sno, sname, sdept, avg(grade), sum(grade) from student, sc where student.sno = sc.sno group by sno;
select su from grad where sdept='CS' order by av asc;*/
create view gre as select sc.cno, course.cname, ccredit, count(*), avg(grade), max(grade), min(grade) from course, sc where course.cno = sc.cno group by cno;
select * from gre;