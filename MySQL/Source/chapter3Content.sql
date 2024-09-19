###3-3-3 Index###
/*create unique index Stusno on student(Sno);
create unique index Coucno on course(Cno);
create unique index SCno on SC(Sno asc,Cno desc);*/

/*alter index SCno rename to SCscno;*/
/*索引相关的问题没搞懂*/

###3-4 Select###
#3-4-1 single table
/*select Sno,Sname,Ssex,Sage,Sdept from Student;
select Sname,'Year of Birth',2014-Sage,Lower(Sdept) from student;
select distinct Sno from SC;
select Sname,Sage from student where Sage<20;
select distinct Sno from SC where Grade<90;
select Sname,Sdept,Sage from student where Sage not between 20 and 23;
select Sname,Ssex from student where Sdept in ('CS','MA','IS');
select Sname,Sno,Ssex from student where Sname like '刘%';
select Sname,Sno,Ssex from student where Sname like '欧阳_';
select Sname,Sno,Ssex from student where Sname like '_阳%';
select Cno,Ccredit from course where Cname like 'DB$_Design' escape'$';
select Sno,Cno from sc where Grade is NULL;
select * from sc where Cno='3' order by Grade DESC;
select count(*) from student;
select count(distinct Sno) from sc;
select avg(Grade) from sc where Cno='1';
select SUM(Ccredit) from SC,Course where Sno='201215122' and sc.Cno=course.Cno;
select Cno,Count(Sno) from sc group by Cno;
select Sno from sc group by Sno having count(*)>=3;
select Sno,AVG(Grade) from sc group by Sno having avg(Grade)>=90;#聚集函数只能用于select的子句和group by中的having的子句！*/

#3-4-2 join
/*select student.*,sc.* from student,sc where student.Sno=sc.Sno;
select student.Sno,Sname,Ssex,Sage,Sdept,Cno,Grade from Student,SC where Student.Sno=SC.Sno;#手动去掉重复的列相比上一句就变成了自然连接
select student.Sno,Sname from student,sc where student.Sno=sc.Sno and sc.Cno='2' and sc.Grade>90;
select First.Cno,Second.Cpno from Course First, Course Second where First.cpno=Second.Cno;#自身连接需要取别名，这里是在查询先修课
select Student.Sno,Sname,Ssex,Sage,Sdept,Cno,Grade from student left outer join sc on (Student.Sno=SC.Sno);#on内外连接时候用,as作为别名,in查询某值是否在某条件里,此处是左外连接
select Student.Sno,Sname,Cname,Grade from student,sc,course where Student.Sno=SC.Sno and SC.Cno=Course.Cno;*/

#3-4-3 nested query !!!
/*select Sno,Sname,Sdept from student where Sdept in (Select Sdept from student where Sname='刘晨');
select Sno,Sname from student where Sno in (select Sno from sc where Cno in (select Cno from Course where Cname='信息系统'));
select Sno,Sname,Sdept from student where Sdept=(select Sdept from student where Sname='刘晨');
select Sno,Cno from sc x where Grade>=(select avg(grade) from sc y where x.Sno=y.Sno);
select Sname,Sage from student where Sage<ALL(Select Sage from student where Sdept='CS') and Sdept<>'CS';
select Sname from student where exists (select * from sc where Sno=Student.Sno and Cno='1');
select distinct Sno from sc scx where not exists (select * from sc scy where scy.sno='201215122' and not exists (select * from sc scz where scz.sno=scx.sno and scz.cno=scy.cno));*/

#3-4-4 set query
/*select * from student where Sdept='CS' union select * from student where Sage<=19;*/

#3-4-5 derived table
/*select Sno,Cno from sc,(Select Sno,avg(Grade) from sc group by sno) as Avg_sc(avg_sno,avg_grade) where sc.sno=Avg_sc.avg_sno and sc.Grade>=Avg_sc.avg_grade;*/

###3-5 Update###
#3-5-1 insert
/*insert into student (Sno,Sname,Ssex,Sdept,Sage) values ('201215128','陈冬','男','IS',18);
insert into Dept_age(Sdept,Avg_age) select Sdept,AVG(Sage) from student group by Sdept;*/

#3-5-2 update
/*update student set Sage=22 where Sno='201215121';
update student set Sage=Sage+1;
update sc set grade=0 where sno in (select sno from student where Sdept='CS');*/

#3-5-3 delete
/*delete from student where Sno='201215128';
delete from student;
delete from sc where sno in (select sno from student where Sdept='CS');*/

###3-6 NULL###
/*select sno from sc where Grade<60 and Cno='1';*/#unknown?

###3-7 View###
#3-7-1 define
/*create view is_student as select sno,sname,sage from student where Sdept='IS' with check option;
create view BT_S(Sno,Sname,Sbirth) as select Sno,Sname,2014-Sage from student;
drop view VT_S;*/
create view S_G(Sno, Gavg) as select Sno, AVG(Grade) from SC group by Sno;

#3-7-2 select
select Sno,Sage from Is_student where Sage<20;
select IS_student.Sno,Sname from is_student,sc where is_student.Sno=SC.Sno and SC.Cno='1';
select * from S_G where Gavg>=90;

#3-7-3 update
/*update is_student set sname='刘辰' where Sno='201215122';
insert into is_student values ('201215129','赵信',20);
delete from is_student where Sno='201215129';*/

#S_G view不可更新，不会自动再算一遍平均值。
/*update S_G set Gavg=90 where Sno='201215121'*/