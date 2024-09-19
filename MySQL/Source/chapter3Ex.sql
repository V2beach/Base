select * from spj_j;
select * from spj_p;
select * from spj_s;
select * from spj_spj;

# Ex5.1
select distinct Sname, City from spj_s;
# Ex5.2
select distinct Pname, Color, Weight from spj_p;
# Ex5.3
select distinct JNO from spj_spj where SNO='S1';
# Ex5.4
select distinct Pname, Weight from spj_spj, spj_p where spj_spj.Pno=spj_p.Pno and JNO='J2';
# Ex5.5
select distinct Pno from spj_spj, spj_s where spj_spj.Sno=spj_s.Sno and City="上海";
# Ex5.6
#select * from spj_spj, spj_s where spj_spj.Sno=spj_s.Sno; 等值连接的效果
select distinct Jname from spj_spj, spj_j, spj_s where spj_spj.Sno=spj_s.Sno and spj_spj.Jno=spj_j.Jno and spj_s.City="上海";# spj_s.City="上海"? 再复杂一点做？
# Ex5.7
select distinct JNO from spj_spj where JNO not in (select JNO from spj_j where city<>"天津");
# Ex5.8
update spj_p set color="蓝色" where color="红色";
# Ex5.9
update spj_spj set sno='S3' where sno in (select sno from spj_spj where Jno='J4' and Pno='P6');
# Ex5.10
delete from spj_s where sno='S2';
delete from spj_spj where sno='S2';
# Ex5.11
insert into spj_spj values ('S2','J6','P4',200);
