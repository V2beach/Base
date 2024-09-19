create table SPJ_S(
	SNO char(10) primary key,
    SNAME char(20),
    STATUS char(20),
    CITY char(20)
);
create table SPJ_P(
	PNO char(10) primary key,
    PNAME char(20),
    COLOR char(20),
    WEIGHT int(20)
);
create table SPJ_J(
	JNO char(10) primary key,
    JNAME char(20),
    CITY char(20)
);
create table SPJ_SPJ(
	SNO char(10),
    PNO char(10),
    JNO char(10),
    QTY int(10)
);