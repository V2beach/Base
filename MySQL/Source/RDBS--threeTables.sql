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