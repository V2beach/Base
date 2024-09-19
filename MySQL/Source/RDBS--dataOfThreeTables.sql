insert into Student values("201215121","李勇","男",20,"CS");
insert into Student values("201215122","刘晨","女",19,"CS");
insert into Student values("201215123","王敏","女",18,"MA");
insert into Student values("201215125","张立","男",19,"IS");

insert into Course values("1","数据库",null,4);
insert into Course values("2","数学",null,2);
insert into Course values("3","信息系统",null,4);
insert into Course values("4","操作系统",null,3);
insert into Course values("5","数据结构",null,4);
insert into Course values("6","数据处理",null,2);
insert into Course values("7","PASCAL语言",null,4);
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

/*create table Course(
	Cno char(4) primary key,
    Cname char(40) not null,
    Cpno char(4),
    Ccredit smallint #,
	#foreign key (Cpno) references Course(Cno)
		#表级完整性约束条件，Cpno是外码，被参照表是Course，被参照列是Cno
);insert into Course values("1","数据库","5",4);
insert into Course values("2","数学",null,2);
insert into Course values("3","信息系统","1",4);
insert into Course values("4","操作系统","6",3);
insert into Course values("5","数据结构","7",4);
insert into Course values("6","数据处理",null,2);
insert into Course values("7","PASCAL语言","6",4);
	#第二种插入数据的方法是，先把外码的约束条件删除，然后再加入foreign key。*/