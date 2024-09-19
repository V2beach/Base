use base;

create table android_bbs( #限定字符数在数据库里都x10了
	bbid int primary key auto_increment, #第几个帖子
    nickname varchar(300), #谁发的
    bbtype int,  #暂定的是三种类别123
    bbtitle varchar(400), #标题
    bbtime varchar(1000), #时间
    longitude varchar(500), #经度
    latitude varchar(500), #维度
    description varchar(1000), #描述
    other varchar(999) #其他
)DEFAULT CHARSET=gbk AUTO_INCREMENT=1;

# insert into android_bbs values(1, 'V2beach', 1, '测试帖', 'BE1949', '39E', '116N', '测试文本', '');
# select * from android_bbs;

create table android_bbs_review(
	reviewid int primary key auto_increment, #评论id
	bbid int, #帖子id
    nickname varchar(300), #评论者
    content varchar(3000) #评论内容
)DEFAULT CHARSET=gbk AUTO_INCREMENT=1;

create table android_bbs_nice(
	bbid int, #帖子id
    userid int #点赞人
)DEFAULT CHARSET=gbk;

create table android_bbs_nicenum(
	bbid int, #帖子id
    nicenum int #点赞次数
)DEFAULT CHARSET=gbk;