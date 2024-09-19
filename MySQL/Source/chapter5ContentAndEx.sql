/*### 5.1 ###
create table student (
	Sno char(9) primary key,
    Sname char(20) not null,
    Ssex char(2),
    Sage smallint,
    Sdept char(20)
);
create table SC(
	Sno char(9) not null,
    Cno char(4) not null,
    Grade smallint,
    primary key (Sno,Cno)
);

### 5.2 ###
create table SC(
	Sno char(9) not null,
    Cno char(4) not null,
    Grade smallint,
    primary key (Sno,Cno),
		#主码由两个属性构成，必须作为表级完整性进行定义
    foreign key (Sno) references Student(Sno),
		#表级完整性约束条件，Sno是外码，被参照表是Student
    foreign key (Cno) references Course(Cno)
		#表级完整性约束条件，Cno是外码，被参照表是Course
);
create table SC(
	Sno char(9),
    Cno char(4),
    Grade smallint,
    primary key (Sno,Cno),
		#主码由两个属性构成，必须作为表级完整性进行定义
    foreign key (Sno) references Student(Sno)
							on delete cascade
							on update cascade,
		#表级完整性约束条件，Sno是外码，被参照表是Student
    foreign key (Cno) references Course(Cno)
							on delete cascade
                            on update cascade
		#表级完整性约束条件，Cno是外码，被参照表是Course
);
### 5.3 ###
create table SC(
	Sno char(9) not null,
    Cno char(4) not null,
    Grade smallint not null,
    primary key (Sno,Cno)
);
create table dept (
	Deptno numeric(2),
    Dname char(9) unique not null,
    Location char(10),
    primary key(Deptno)
);
create table student (
	Sno char(9) primary key,
    Sname char(8) not null,
    Ssex char(2) check (Ssex in ('male', 'female')),
	Sage smallint,
    Sdept char(20)
);
create table SC(
	Sno char(9) not null,
    Cno char(4) not null,
    Grade smallint check (grade>=0 and grade<=100),
    primary key (Sno,Cno),
		#主码由两个属性构成，必须作为表级完整性进行定义
    foreign key (Sno) references Student(Sno),
		#表级完整性约束条件，Sno是外码，被参照表是Student
    foreign key (Cno) references Course(Cno)
		#表级完整性约束条件，Cno是外码，被参照表是Course
);
create table student (
	Sno char(9),
    Sname char(20) not null,
    Ssex char(2),
    Sage smallint,
    Sdept char(20),
    primary key (Sno),
    check (Ssex = 'female' or Sname not like "Ms.%")
);*/
### 5.4 ###
/*create database demo3;
use demo3;*/
create table student1 (
	Sno numeric(6) check (sno between 90000 and 99999), # 这个名字不管用，删名字删不掉 try，只能删除key，check无效
    Sname char(20) not null,
    Ssex char(2), constraint c4 check (Ssem in ('male', 'famale')),
    Sage smallint, constraint c3 check (Sage<30),
    Sdept char(20), 
    constraint StudentKey primary key (Sno)
);
insert into student1 values (123, '233', null, null, null);
create table teacher (
	Eno numeric(4) primary key,
    Job char(10),
    Sal numeric(7, 2),
    Deduct numeric(7, 2),
    Deptno numeric(2),
		constraint teacherfKey foreign key(deptno) #??
			references dept(Deptno),
		constraint c1 check (Sal + Deduct >=30000)
);
alter table student drop primary key;
alter table teacher drop foreign key deptno;
alter table student add constraint c1 check (Sno between 90000 and 99999);

### 5.5 ###
#create domain genderDomain char(2) check (value in ('male', 'female');
### 5.6 ### 断言


create table Teacher(
	No  char(9),
    Job	varchar(10),
    Sal float
);

### 5.7 ### trigger
delimiter |
create trigger sc_t
after update
on sc for each row
begin
	if (new.grade >= 1.1*old.grade) then
		insert into sc_u
		values (old.sno, old.cno, old.grade, new.grade);
	end if;
end |
delimiter ;

delimiter |
create trigger Insert_Sal
before insert
on Teacher for each row
BEGIN
	if ((New.job='教授') and (New.Sal< 4000)) then
		set New.Sal =4000;
	end if;
end |
delimiter ;

delimiter |
create trigger Update_Sal
before update
on Teacher for each row
BEGIN
	if ((New.job='教授') and (New.Sal< 4000)) then
		set New.Sal =4000;
	end if;
end |
delimiter ;

drop trigger Insert_Sal;

### Ex6 ###
create table employees(
	Eno 	char(20) primary key,
    Ename 	char(20),
    Eage 	int (10),
    Epos 	char(20),
    Esalary	int (10),
    Edept	char(20),
    check 	(Eage <= 60),
	foreign key (Dno) references dept (Dno) # Dno在dept中是主键
);
delimiter |
create trigger Update_Sal
before update
on employees for each row
BEGIN
	if (New.Eage<=60)then
		set New.Sal = Old.Sal;
	end if;
end |
delimiter ;
delimiter |
create trigger Insert_Sal
before insert
on employees for each row
BEGIN
	if (New.Eage<=60) then
		set Eno = 0; #间接让他报错！
	end if;
end |
delimiter ;

create table dept(
	Dno 	 char(20) primary key,
    Dname 	 char(20),
    Hostname char(10),
    Daddress char(20),
    Dphone	 int (13)
);