use SCT;
create table student(
	Sno char(8) primary key, 
    Sname char(10) not null,
    Ssex char(2) constraint ctSsex check(Ssex in ('男','女')),
    Sage integer constraint ctSage check(Sage between 0 and 100),
    Dno char(2),
    Sclass char(6)
);
    