#create database demo;
use base;
select * from movie_movies;
select * from movie_reviews;
/*use demo;

#1
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
load data infile 'D:/movies1.csv'
into table movie_movies
character set gbk
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\r\n'
(moviename, imdbrate, category, country, director, douban, download, intro, language, actor, duration, publishdate);
select * from movie_movies;*/