/*SET SQL_SAFE_UPDATES = 0;
delete from spj_spj where SNO="S1";
drop table spj_s;
create table SPJ_S(
	SNO char(10) primary key,
    SNAME char(20),
    STATUS char(20),
    CITY char(20)
);
select distinct PNO,JNO from spj_spj;
select distinct PNO from spj_spj where SNO="S1";
select JNO from (select distinct PNO,JNO from spj_spj)sub where exists(
	select distinct PNO from spj_spj where SNO="S1"
) group by JNO having count(1)>=2;*/

/*select * from student;
show index from student;
select * from course;
select * from sc;

select * from is_student;*/

/*create user 'client'@'localhost' identified by 'nimeide233';*/
/*SELECT User, Host, Password FROM mysql.user;
show index from student;*/

/*create user 'U1'@'localhost' identified by 'U1';*/
/*grant select on sc to 'U1'@'localhost' with grant option;#是在demo2这个数据库里面授予的权限。

create user 'U2'@'localhost' identified by 'U2';
create user 'U3'@'localhost' identified by 'U3';
create user 'U4'@'localhost' identified by 'U4';
create user 'U5'@'localhost' identified by 'U5';
create user 'U6'@'localhost' identified by 'U6';
create user 'U7'@'localhost' identified by 'U7';*/

/*show grants;*/
/*insert into student values (233, '233', null, null, null);*/

/*create table employees(
	Eno 	char(20) primary key,
    Ename 	char(20),
    Eage 	int (10),
    Epos 	char(20),
    Esalary	int (10),
    Edept	char(20),
    check 	(Eage <= 60)
	#foreign key (Dno) references dept (Dno) # Dno在dept中是主键
);*/

/*create database review_oh;
use review_oh;
create table SPJ_S(
	SNO char(10) primary key,
    SNAME char(20),
    STATUS char(20),
    CITY char(20)
);
create table SPJ_P(
	PNO char(10) primary key,
    PNAME char(20),
    COLOR char(20),
    WEIGHT int(20)
);
create table SPJ_J(
	JNO char(10) primary key,
    JNAME char(20),
    CITY char(20)
);
create table SPJ_SPJ(
	SNO char(10),
    PNO char(10),
    JNO char(10),
    QTY int(10)
);*/

drop table SC;
drop table Course;
drop table Student;

create table Student(
	Sno char(9) primary key,
    Sname char(20) unique,
    Ssex char(2),
    Sage smallint,
    Sdept char(20)
);

create table Course(
	Cno char(4) primary key,
    Cname char(40) not null,
    Cpno char(4),
    Ccredit smallint,
    teacher char(40),
	foreign key (Cpno) references Course(Cno)
		#表级完整性约束条件，Cpno是外码，被参照表是Course，被参照列是Cno
);

create table SC(
	Sno char(9),
    Cno char(4),
    Grade smallint,
    primary key (Sno,Cno),
		#主码由两个属性构成，必须作为表级完整性进行定义
    foreign key (Sno) references Student(Sno),
		#表级完整性约束条件，Sno是外码，被参照表是Student
    foreign key (Cno) references Course(Cno)
		#表级完整性约束条件，Cno是外码，被参照表是Course
);

insert into Student values("201215121","李勇","男",20,"CS");
insert into Student values("201215122","刘晨","女",19,"CS");
insert into Student values("201215123","王敏","女",18,"MA");
insert into Student values("201215125","张立","男",19,"IS");

insert into Course values("1","数据库",null,4,"程军");
insert into Course values("2","数学",null,2,"不是程军");
insert into Course values("3","信息系统",null,4,"程军");
insert into Course values("4","操作系统",null,3,"不是程军");
insert into Course values("5","数据结构",null,4,"不是程军");
insert into Course values("6","数据处理",null,2,"不是程军");
insert into Course values("7","PASCAL语言",null,4,"不是程军");
UPDATE Course SET Cpno="5" WHERE Cno="1";
UPDATE Course SET Cpno=null WHERE Cno="2";
UPDATE Course SET Cpno="1" WHERE Cno="3";
UPDATE Course SET Cpno="6" WHERE Cno="4";
UPDATE Course SET Cpno="7" WHERE Cno="5";
UPDATE Course SET Cpno=null WHERE Cno="6";
UPDATE Course SET Cpno="6" WHERE Cno="7";
	#根据外码相关的参照完整性规则，必须表内有的数据才可以对应出外码。
    #第一种插入数据的方法是，将外码全部设为null然后逐个更新。

insert into SC values("201215121","1",92);
insert into SC values("201215121","2",85);
insert into SC values("201215121","3",88);
insert into SC values("201215122","2",90);
insert into SC values("201215122","3",80);