insert into spj_s values("S1","精益","20","天津");
insert into spj_s values("S2","盛锡","10","北京");
insert into spj_s values("S3","东方红","30","北京");
insert into spj_s values("S4","丰泰盛","20","天津");
insert into spj_s values("S5","为民","30","上海");

insert into spj_p values("P1","螺母","红",12);
insert into spj_p values("P2","螺栓","绿",17);
insert into spj_p values("P3","螺丝刀","蓝",14);
insert into spj_p values("P4","螺丝刀","红",14);
insert into spj_p values("P5","凸轮","蓝",40);
insert into spj_p values("P6","齿轮","红",30);

insert into spj_j values("J1","三建","北京");
insert into spj_j values("J2","一汽","长春");
insert into spj_j values("J3","弹簧厂","天津");
insert into spj_j values("J4","造船厂","天津");
insert into spj_j values("J5","机车厂","唐山");
insert into spj_j values("J6","无线电厂","常州");
insert into spj_j values("J7","半导体厂","南京");

insert into spj_spj values("S1","P1","J1",200);
insert into spj_spj values("S1","P1","J3",100);
insert into spj_spj values("S1","P1","J4",700);
insert into spj_spj values("S1","P2","J2",100);

insert into spj_spj values("S2","P3","J1",400);
insert into spj_spj values("S2","P3","J2",200);
insert into spj_spj values("S2","P3","J4",500);
insert into spj_spj values("S2","P3","J5",400);
insert into spj_spj values("S2","P5","J1",400);
insert into spj_spj values("S2","P5","J2",100);

insert into spj_spj values("S3","P1","J1",200);
insert into spj_spj values("S3","P3","J1",200);

insert into spj_spj values("S4","P5","J1",100);
insert into spj_spj values("S4","P6","J3",300);
insert into spj_spj values("S4","P6","J4",200);

insert into spj_spj values("S5","P2","J4",100);
insert into spj_spj values("S5","P3","J1",200);
insert into spj_spj values("S5","P6","J2",200);
insert into spj_spj values("S5","P6","J4",500);