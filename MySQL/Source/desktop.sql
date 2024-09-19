#create database base CHARACTER SET utf8;
/*use base;
create table logInfo(
	id int primary key auto_increment,
    username varchar(100),
    password varchar(100),
    nickname varchar(100),
    authority varchar(30)
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
insert into logInfo values(0, "V2beach", "V2beach", "V2beach", "root");
insert into logInfo values(2, "Client", "123456", "Client", "user");


create table uncompletedMusic(
	id int primary key auto_increment,
    nickname varchar(100),
    songname varchar(100),
    songdate varchar(100),
    userid int(100)
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

create table completedMusic(
	id int primary key auto_increment,
    nickname varchar(100),
    songname varchar(100),
    songdate varchar(100),
    userid int(100)
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

create table stuMsg(
	id int primary key auto_increment,
    stucode varchar(30),
    stuname varchar(30),
    stupwd varchar(30),
    stumajor varchar(30),
    stugpa varchar(30)
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

create table statistics(
	statisticsType varchar(100),
    statistics int(100)
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
insert into statistics values ("total", 1000);*/

insert into uncompletedMusic values(0, "V2beach", "180度 孙燕姿", "2019年11月26日", 0);