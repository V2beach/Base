#1
select spj_spj.JNO 
from spj_s, spj_p, spj_j, spj_spj 
where spj_s.SNO = spj_spj.SNO and spj_p.PNO = spj_spj.PNO and spj_j.JNO = spj_spj.JNO
	and spj_s.CITY = '北京' and spj_p.WEIGHT > 30;

#2
select distinct SNO from spj_spj where JNO="J1";

#3
select distinct SNO from spj_spj where JNO="J1" and PNO="P1";

#4
select distinct SNO from spj_spj where JNO="J1" and exists(
	select PNO from spj_p where COLOR="红"
);

#5
select distinct JNO from spj_spj where exists(
	select PNO from spj_p where COLOR<>"红"
)and exists(
	select SNO from spj_s where CITY<>"天津"
) order by JNO ASC;

#6
select JNO from (select distinct PNO,JNO from spj_spj)sub where PNO="P1" or PNO="P2" group by JNO having count(1)>=2;

select JNO 
from (select distinct PNO,JNO from spj_spj)sub 
where PNO 
in (select distinct PNO from spj_spj where SNO="S1") 
group by JNO having count(1)>=2;

select count(*) from SPJ_SPJ;