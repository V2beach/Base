use base;#访问控制加角色和权限/加触发器

#1 另外修复一下注册登陆的bug，这个用不了了
/*create table movie_movies(#电影信息库
	movieid int primary key auto_increment,
    moviename varchar(30),#不确定长度的统一30，再长也不可能超过15个字
    movietype varchar(30),
    movieintro varchar(1000),
    moviedirector varchar(30),#暂时决定不用导演id和演员id直接存字符串比较好
	movieactors varchar(500),
	douban double,
    imdb double
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;*/
drop table movie_movies;
create table movie_movies(#电影信息库
	movieid int primary key auto_increment,
    moviename varchar(300),#不确定长度的300，再长也不可能超过150个字
    imdbrate varchar(100),
    category varchar(300),
    country varchar(300),
    director varchar(300),#暂时决定不用导演id和演员id直接存字符串比较好
	douban varchar(100),
    download varchar(300),
    intro varchar(1000),
    language varchar(100),
    actor varchar(300),
    duration varchar(100),
    publishdate varchar(100)
)DEFAULT CHARSET=gbk AUTO_INCREMENT=1;
show global variables like '%secure_file_priv%';
show full columns from movie_movies;
load data infile '/movies.csv'
into table movie_movies
character set gbk
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\r\n'
(moviename, imdbrate, category, country, director, douban, download, intro, language, actor, duration, publishdate);
select * from movie_movies;

#2
drop table movie_directors;
create table movie_directors(#导演信息库
	directorid int primary key auto_increment,
    directorname varchar(30),
    directorintro varchar(1000),
    achievement varchar(1000),#暂时不用但备用看库够不够
    infourl varchar(100)
)DEFAULT CHARSET=gbk AUTO_INCREMENT=1;

#3
drop table movie_actors;
create table movie_actors(#演员信息库
	actorid int primary key auto_increment,
    actorname varchar(30),
    actorintro varchar(1000),
    achievement varchar(1000),
    infourl varchar(100)
)DEFAULT CHARSET=gbk AUTO_INCREMENT=1;

#4
drop table movie_reviews;
create table movie_reviews(#评论库
	reviewid int primary key auto_increment,
    userid int,
    movieid int,
    content varchar(1000),#评论上限500字
    score int#上限10分这里可以限制一下
)DEFAULT CHARSET=gbk AUTO_INCREMENT=1;

#5
drop table movie_message;
create table movie_message(#消息库
	messageid int primary key auto_increment,
    srcid int,
    destid int,
    content varchar(1000)#消息上限500字
)DEFAULT CHARSET=gbk AUTO_INCREMENT=1;

#6
drop table movie_vip;
create table movie_vip(#会员库，一次充值终生会员
	vipid int primary key auto_increment,#第几个会员
    userid int,#假设我的用户最多1000人
    date int#成为会员的日期，格式为20191219
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

#7
/*create table movie_show(#展示库
	showid int movie_vipprimary key auto_increment,
    movieintro varchar(5000)#万一不够呢？
)DEFAULT CHARSET=gbk AUTO_INCREMENT=1;#gbk?html file.*/
#drop table role;
create table role(
	id int primary key not null,
    authority varchar(30),
    view varchar(100)
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

#8
/*create table user_role(
	userid int,
	authority varchar(30)
    primary key(userid, authority)
)DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;*/

#建立VIP信息视图
#create view 

#建立消息统计视图

#建立