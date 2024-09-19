FLUSH PRIVILEGES;

grant select on table student to 'U1'@'localhost';
grant ALL privileges on table student to 'U2'@'localhost', 'U3'@'localhost';
grant ALL privileges on table course to 'U2'@'localhost', 'U3'@'localhost';
/*grant select on table sc to public;#mysql不支持public*/
grant update(Sno), select on table student to 'U4'@'localhost';
grant insert on table sc to 'U5'@'localhost' with grant option;
grant insert on table sc to 'U6'@'localhost' with grant option;
grant insert on table sc to 'U7'@'localhost';

revoke update(Sno) on table student from 'U4'@'localhost';
/*revoke select on table sc from ''@'localhost';#mysql不支持public*/
revoke insert on table sc from 'U5'@'localhost';#cascade, MySQL没法级联收回，自己观察一下，只能一个一个收回。

#create role R1;
grant select, update, insert on table student to R1;
/*create user '王平'@'localhost', '张明'@'localhost', '赵玲'@'localhost' identified by '123456';*/
grant R1 to '王平'@'localhost','张明'@'localhost','赵玲'@'localhost';
revoke R1 from '王平'@'localhost';
grant delete on table student to R1;
revoke select on table student from R1;

create view cs_student as select * from student where Sdept = 'CS';
grant select on cs_student to '王平'@'localhost';
grant all privileges on cs_student to '张明'@'localhost';

#audit alter, update on sc;
#noaudit alter, update on sc;

### Ex7 ###
/*create table employees(
	Eno 	char(20) primary key,
    Ename 	char(20),
    Eage 	int (10),
    Epos 	char(20),
    Esalary	int (10),
    Edept	char(20)
);
create table dept(
	Dno 	 char(20) primary key,
    Dname 	 char(20),
    Hostname char(10),
    Daddress char(20),
    Dphone	 int (13)
);*/
### 1 ### TRY!!!!!!!
grant select on table employees to 'U1'@'localhost';
grant select on table dept to 'U1'@'localhost';
### 2 ###
grant insert, delete on table employees to 'U2'@'localhost';
### 3 ###
create view e1 as select * from employees where USER() = employees.Ename;
grant select on e1 to 'U3'@'localhost';
### 4 ###
grant select on table employees to 'U4'@'localhost';
create view e2 as select Esalary from employees;
grant update on e2 to 'U4'@'localhost' ;
### 5 ###
grant alter on table employees to 'U5'@'localhost';
grant alter on table dept to 'U5'@'localhost';
### 6 ###
grant all privileges on table employees to 'U6'@'localhost' with grant option;
grant all privileges on table dept to 'U6'@'localhost' with grant option;
### 7 ###
create view e3 as select average(Esalary), max(Esalary), min(Esalary) from employees;
grant select on e3 to 'U7'@'localhost';

revoke select on table dept from 'U1'@'localhost';
revoke insert, delete on table employees from 'U2'@'localhost';
revoke select on e1 from 'U3'@'localhost';
revoke select on table employees from 'U4'@'localhost';
revoke update on e2 from 'U4'@'localhost' ;
revoke alter on table employees from 'U5'@'localhost';
revoke alter on table dept from 'U5'@'localhost';
revoke all privileges, grant option from 'U6'@'localhost';
revoke select on e3 from 'U7'@'localhost';