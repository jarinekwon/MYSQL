  DROP TABLE EMP ;
  
  CREATE TABLE EMP 
   (	EMPNO INT(4) primary key, 
	ENAME VARCHAR(10), 
	JOB VARCHAR(9), 
	MGR INT(4), 
	HIREDATE DATE, 
	SAL INT(7), 
	COMM INT(7), 
	DEPTNO INT(2)
   );

Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7369,'SMITH','CLERK',7902,date_format('80/12/17','%y%m%d'),800,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7499,'ALLEN','SALESMAN',7698,date_format('81/02/20','%y%m%d'),1600,300,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7521,'WARD','SALESMAN',7698,date_format('81/02/22','%y%m%d'),1250,500,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7566,'JONES','MANAGER',7839,date_format('81/04/02','%y%m%d'),2975,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7654,'MARTIN','SALESMAN',7698,date_format('81/09/28','%y%m%d'),1250,1400,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7698,'BLAKE','MANAGER',7839,date_format('81/05/01','%y%m%d'),2850,null,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7782,'CLARK','MANAGER',7839,date_format('81/06/09','%y%m%d'),2450,null,10);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7839,'KING','PRESIDENT',null,date_format('81/11/17','%y%m%d'),5000,null,10);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7844,'TURNER','SALESMAN',7698,date_format('81/09/08','%y%m%d'),1500,0,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7900,'JAMES','CLERK',7698,date_format('81/12/03','%y%m%d'),950,null,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7902,'FORD','ANALYST',7566,date_format('81/12/03','%y%m%d'),3000,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7934,'MILLER','CLERK',7782,date_format('82/01/23','%y%m%d'),1300,null,10);

  DROP TABLE DEPT ;
  CREATE TABLE DEPT 
   (DEPTNO INT(2) primary key, 
	DNAME VARCHAR(14), 
	LOC VARCHAR(13)
   );
   
Insert into DEPT (DEPTNO,DNAME,LOC) values (10,'ACCOUNTING','NEW YORK');
Insert into DEPT (DEPTNO,DNAME,LOC) values (20,'RESEARCH','DALLAS');
Insert into DEPT (DEPTNO,DNAME,LOC) values (30,'SALES','CHICAGO');
Insert into DEPT (DEPTNO,DNAME,LOC) values (40,'OPERATIONS','BOSTON');

alter table EMP add foreign key(DEPTNO) references DEPT(DEPTNO);

drop table professor ;

create table professor
(profno int(4) primary key,
 name  varchar(20) not null, 
 id  varchar(15) not null,
 position varchar (30) not null,
 pay int (3) not null,
 hiredate  date not null,
 bonus int(4) ,
 deptno  int(3),
 email  varchar(50),
 hpage  varchar(50));
 
insert into professor
values(1001,'Audie Murphy','Murphy','a full professor',550,date_format('1980-06-23','%y%m%d'),100,101,'captain@abc.net','http://www.abc.net');

insert into professor
values(1002,'Angela Bassett','Bassett','assistant professor',380,date_format('1987-01-30','%y%m%d'),60,101,'sweety@abc.net','http://www.abc.net');

insert into professor
values (1003,'Jessica Lange','Lange','instructor',270,date_format('1998-03-22','%y%m%d'),null,101,'pman@power.com','http://www.power.com');

insert into professor
values (2001,'Winona Ryder','Ryder','instructor',250,date_format('2001-09-01','%y%m%d'),null,102,'lamb1@hamail.net',null);

insert into professor
values (2002,'Michelle Pfeiffer','Pfeiffer','assistant professor',350,date_format('1985-11-30','%y%m%d'),80,102,'int1@naver.com','http://num1.naver.com');

insert into professor
values (2003,'Whoopi Goldberg','Goldberg','a full professor',490,date_format('1982-04-29','%y%m%d'),90,102,'bdragon@naver.com',null);

insert into professor
values (3001,'Emma Thompson','Thompson','a full professor',530,date_format('1981-10-23','%y%m%d'),110,103,'angel1004@hanmir.com',null);

insert into professor
values (3002,'Julia Roberts','Roberts','assistant professor',330,date_format('1997-07-01','%y%m%d'),50,103,'naone10@empal.com',null);

insert into professor
values (3003,'Sharon Stone','Stone','instructor',290,date_format('2002-02-24','%y%m%d'),null,103,'only_u@abc.com',null);

insert into professor
values (4001,'Meryl Streep','Streep','a full professor',570,date_format('1981-10-23','%y%m%d'),130,201,'chebin@daum.net',null);

insert into professor
values (4002,'Susan Sarandon','Sarandon','assistant professor',330,date_format('2009-08-30','%y%m%d'),null,201,'gogogo@def.com',null);

insert into professor
values (4003,'Nicole Kidman','Kidman','assistant professor',310,date_format('1999-12-01','%y%m%d'),50,202,'mypride@hanmail.net',null);

insert into professor
values (4004,'Holly Hunter','Hunter','instructor',260,date_format('2009-01-28','%y%m%d'),null,202,'ironman@naver.com',null);

insert into professor
values (4005,'Meg Ryan','Ryan','a full professor',500,date_format('1985-09-18','%y%m%d'),80,203,'standkang@naver.com',null);

insert into professor 
values (4006,'Andie Macdowell','Macdowell','instructor',220,date_format('2010-06-28','%y%m%d'),null,301,'napeople@jass.com',null);

insert into professor
values (4007,'Jodie Foster','Foster','assistant professor',290,date_format('2001-05-23','%y%m%d'),30,301,'silver-her@daum.net',null);

drop table department;
create table department
( deptno int(3) primary key ,
  dname varchar(50) not null,
  part int(3),
  build  varchar(30));

insert into department 
values (101,'Computer Engineering',100,'Information Bldg');

insert into department
values (102,'Multimedia Engineering',100,'Multimedia Bldg');

insert into department
values (103,'Software Engineering',100,'Software Bldg');

insert into department
values (201,'Electronic Engineering',200,'Electronic Control Bldg');

insert into department
values (202,'Mechanical Engineering',200,'Machining Experiment Bldg');

insert into department
values (203,'Chemical Engineering',200,'Chemical Experiment Bldg');

insert into department
values (301,'Library and Information science',300,'College of Liberal Arts');

insert into department
values (100,'Department of Computer Information',10,null);

insert into department
values (200,'Department of Mechatronics',10,null);

insert into department
values (300,'Department of Humanities and Society',20,null);

insert into department
values (10,'College of Engineering',null,null);

insert into department
values (20,'College of Liberal Arts',null,null);

drop table student;

create table student
( studno int(4) primary key,
  name   varchar(30) not null,
  id varchar(20) not null unique,
  grade int check(grade between 1 and 6),
  jumin char(13) not null,
  birthday  date,
  tel varchar(15),
  height  int(4),
  weight  int(3),
  deptno1 int(3),
  deptno2 int(3),
  profno  int(4));

insert into student values (
9411,'James Seo','75true',4,'7510231901813',date_format('1975-10-23','%y%m%d'),'055)381-2158',180,72,101,201,1001);

insert into student values (
9412,'Rene Russo','Russo',4,'7502241128467',date_format('1975-02-24','%y%m%d'),'051)426-1700',172,64,102,null,2001);

insert into student values (
9413,'Sandra Bullock','Bullock',4,'7506152123648',date_format('1975-06-15','%y%m%d'),'053)266-8947',168,52,103,203,3002);

insert into student values (
9414,'Demi Moore','Moore',4,'7512251063421',date_format('1975-12-25','%y%m%d'),'02)6255-9875',177,83,201,null,4001);

insert into student values (
9415,'Danny Glover','Glover',4,'7503031639826',date_format('1975-03-03','%y%m%d'),'031)740-6388',182,70,202,null,4003);

insert into student values (
9511,'Billy Crystal','Crystal',3,'7601232186327',date_format('1976-01-23','%y%m%d'),'055)333-6328',164,48,101,null,1002);

insert into student values (
9512,'Nicholas Cage','Cage',3,'7604122298371',date_format('1976-04-12','%y%m%d'),'051)418-9627',161,42,102,201,2002);

insert into student values (
9513,'Micheal Keaton','Keaton',3,'7609112118379',date_format('1976-09-11','%y%m%d'),'051)724-9618',177,55,202,null,4003);

insert into student values (
9514,'Bill Murray','Murray',3,'7601202378641',date_format('1976-01-20','%y%m%d'),'055)296-3784',160,58,301,101,4007);

insert into student values (
9515,'Macaulay Culkin','Culkin',3,'7610122196482',date_format('1976-10-12','%y%m%d'),'02)312-9838',171,54,201,null,4001);

insert into student values (
9611,'Richard Dreyfus','Dreyfus',2,'7711291186223',date_format('1977-11-29','%y%m%d'),'02)6788-4861',182,72,101,null,1002);

insert into student values (
9612,'Tim Robbins','Robbins',2,'7704021358674',date_format('1977-04-02','%y%m%d'),'055)488-2998',171,70,102,null,2001);

insert into student values (
9613,'Wesley Snipes','Snipes',2,'7709131276431',date_format('1977-09-13','%y%m%d'),'053)736-4981',175,82,201,null,4002);

insert into student values (
9614,'Steve Martin','Martin',2,'7702261196365',date_format('1977-02-26','%y%m%d'),'02)6175-3945',166,51,201,null,4003);

insert into student values (
9615,'Daniel Day-Lewis','Day-Lewis',2,'7712141254963',date_format('1977-12-14','%y%m%d'),'051)785-6984',184,62,301,null,4007);

insert into student values (
9711,'Danny Devito','Devito',1,'7808192157498',date_format('1978-08-19','%y%m%d'),'055)278-3649',162,48,101,null,null);

insert into student values (
9712,'Sean Connery','Connery',1,'7801051776346',date_format('1978-01-05','%y%m%d'),'02)381-5440',175,63,201,null,null);

insert into student values (
9713,'Christian Slater','Slater',1,'7808091786954',date_format('1978-08-09','%y%m%d'),'031)345-5677',173,69,201,null,null);

insert into student values (
9714,'Charlie Sheen','Sheen',1,'7803241981987',date_format('1978-03-24','%y%m%d'),'055)423-9870',179,81,102,null,null);

insert into student values (
9715,'Anthony Hopkins','Hopkins',1,'7802232116784',date_format('1978-02-23','%y%m%d'),'02)6122-2345',163,51,103,null,null);

drop table emp2;

CREATE TABLE EMP2 (
 EMPNO       int  PRIMARY KEY,
 NAME        VARCHAR(30) NOT NULL,
 BIRTHDAY    DATE,
 DEPTNO      VARCHAR(06) NOT NULL,
 EMP_TYPE    VARCHAR(30),
 TEL         VARCHAR(15),
 HOBBY       VARCHAR(30),
 PAY         int,
 POSITION    VARCHAR(30),
 PEMPNO      int
);

INSERT INTO EMP2 VALUES (19900101,'Kurt Russell',date_format('19640125','%y%m%d'),'0001','Permanent employee','054)223-0001','music',100000000,'Boss',null);
INSERT INTO EMP2 VALUES (19960101,'AL Pacino',date_format('19730322','%y%m%d'),'1000','Permanent employee','02)6255-8000','reading',72000000,'Department head',19900101);
INSERT INTO EMP2 VALUES (19970201,'Woody Harrelson',date_format('19750415','%y%m%d'),'1000','Permanent employee','02)6255-8005','Fitness',50000000,'Section head',19960101);
INSERT INTO EMP2 VALUES (19930331,'Tommy Lee Jones',date_format('19760525','%y%m%d'),'1001','Perment employee','02)6255-8010','bike',60000000,'Deputy department head',19960101);
INSERT INTO EMP2 VALUES (19950303,'Gene Hackman',date_format('19730615','%y%m%d'),'1002','Perment employee','02)6255-8020','Marathon',56000000,'Section head',19960101);
INSERT INTO EMP2 VALUES (19966102,'Kevin Bacon',date_format('19720705','%y%m%d'),'1003','Perment employee','052)223-4000','Music',75000000,'Department head',19900101);
INSERT INTO EMP2 VALUES (19930402,'Hugh Grant',date_format('19720815','%y%m%d'),'1004','Perment employee','042)998-7005','Climb',51000000,'Section head',19966102);
INSERT INTO EMP2 VALUES (19960303,'Keanu Reeves',date_format('19710925','%y%m%d'),'1005','Perment employee','031)564-3340','Climb',35000000,'Deputy Section chief',19966102);
INSERT INTO EMP2 VALUES (19970112,'Val Kilmer',date_format('19761105','%y%m%d'),'1006','Perment employee','054)223-4500','Swim',68000000,'Department head',19900101);
INSERT INTO EMP2 VALUES (19960212,'Chris O''Donnell',date_format('19721215','%y%m%d'),'1007','Perment employee','054)223-4600',null,49000000,'Section head',19970112);
INSERT INTO EMP2 VALUES (20000101,'Jack Nicholson',date_format('19850125','%y%m%d'),'1008','Contracted Worker','051)123-4567','Climb', 30000000,'',19960212);
INSERT INTO EMP2 VALUES (20000102,'Denzel Washington',date_format('19830322','%y%m%d'),'1009','Contracted Worker','031)234-5678','Fishing', 30000000,'',19960212);
INSERT INTO EMP2 VALUES (20000203,'Richard Gere',date_format('19820415','%y%m%d'),'1010','Contracted Worker','02)2345-6789','Baduk', 30000000,'',19960212);
INSERT INTO EMP2 VALUES (20000334,'Kevin Costner',date_format('19810525','%y%m%d'),'1011','Contracted Worker','053)456-7890','Singing', 30000000,'',19960212);
INSERT INTO EMP2 VALUES (20000305,'JohnTravolta',date_format('19800615','%y%m%d'),'1008','Probation','051)567-8901','Reading book', 22000000,'',19960212);
INSERT INTO EMP2 VALUES (20006106,'Robert De Niro',date_format('19800705','%y%m%d'),'1009','Probation','031)678-9012','Driking',   22000000,'',19960212);
INSERT INTO EMP2 VALUES (20000407,'Sly Stallone',date_format('19800815','%y%m%d'),'1010','Probation','02)2789-0123','Computer game', 22000000,'',19960212);
INSERT INTO EMP2 VALUES (20000308,'Tom Cruise',date_format('19800925','%y%m%d'),'1011','Intern','053)890-1234','Golf', 20000000,'',19960212);
INSERT INTO EMP2 VALUES (20000119,'Harrison Ford',date_format('19801105','%y%m%d'),'1004','Intern','042)901-2345','Drinking',   20000000,'',19930402);
INSERT INTO EMP2 VALUES (20000210,'Clint Eastwood',date_format('19801215','%y%m%d'),'1005','Intern','031)345-3456','Reading book', 20000000,'',19960303);

drop table dept2;

CREATE TABLE DEPT2 (
 DCODE   VARCHAR(06)  PRIMARY KEY,
 DNAME   VARCHAR(30) NOT NULL,
 PDEPT VARCHAR(06) ,
 AREA        VARCHAR(30)
);

INSERT INTO DEPT2 VALUES ('0001','President','','Pohang Main Office');
INSERT INTO DEPT2 VALUES ('1000','Management Support Team','0001','Seoul Branch Office');
INSERT INTO DEPT2 VALUES ('1001','Financial Management Team','1000','Seoul Branch Office');
INSERT INTO DEPT2 VALUES ('1002','General affairs','1000','Seoul Branch Office');
INSERT INTO DEPT2 VALUES ('1003','Engineering division','0001','Pohang Main Office');
INSERT INTO DEPT2 VALUES ('1004','H/W Support Team','1003','Daejeon Branch Office');
INSERT INTO DEPT2 VALUES ('1005','S/W Support Team','1003','Kyunggi Branch Office');
INSERT INTO DEPT2 VALUES ('1006','Business Department','0001','Pohang Main Office');
INSERT INTO DEPT2 VALUES ('1007','Business Planning Team','1006','Pohang Main Office');
INSERT INTO DEPT2 VALUES ('1008','Sales1 Team','1007','Busan Branch Office');
INSERT INTO DEPT2 VALUES ('1009','Sales2 Team','1007','Kyunggi Branch Office');
INSERT INTO DEPT2 VALUES ('1010','Sales3 Team','1007','Seoul Branch Office');
INSERT INTO DEPT2 VALUES ('1011','Sales4 Team','1007','Ulsan Branch Office');

DROP TABLE cal;

CREATE TABLE cal
   (weekno  VARCHAR(1),
    day   VARCHAR(5),
    dayno VARCHAR(2)) ;

insert into cal values ('1','SUN','1');
insert into cal values ('1','MON','2');
insert into cal values ('1','TUE','3');
insert into cal values ('1','WED','4');
insert into cal values ('1','THU','5');
insert into cal values ('1','FRI','6');
insert into cal values ('1','SAT','7');
insert into cal values ('2','SUN','8');
insert into cal values ('2','MON','9');
insert into cal values ('2','TUE','10');
insert into cal values ('2','WED','11');
insert into cal values ('2','THU','12');
insert into cal values ('2','FRI','13');
insert into cal values ('2','SAT','14');
insert into cal values ('3','SUN','15');
insert into cal values ('3','MON','16');
insert into cal values ('3','TUE','17');
insert into cal values ('3','WED','18');
insert into cal values ('3','THU','19');
insert into cal values ('3','FRI','20');
insert into cal values ('3','SAT','21');
insert into cal values ('4','SUN','22');
insert into cal values ('4','MON','23');
insert into cal values ('4','TUE','24');
insert into cal values ('4','WED','25');
insert into cal values ('4','THU','26');
insert into cal values ('4','FRI','27');
insert into cal values ('4','SAT','28');
insert into cal values ('5','SUN','29');
insert into cal values ('5','MON','30');
insert into cal values ('5','TUE','31');

DROP TABLE gift;

create table gift
( gno  int ,
  gname varchar(30) ,
  g_start  int ,
  g_end  int );

insert into gift values(1,'Tuna Set',1,100000);
insert into gift values(2,'Shampoo Set',100001,200000);
insert into gift values(3,'Car wash Set',200001,300000);
insert into gift values(4,'Kitchen Supplies Set',300001,400000);
insert into gift values(5,'Mountain bike',400001,500000);
insert into gift values(6,'LCD Monitor',500001,600000);
insert into gift values(7,'Notebook',600001,700000);
insert into gift values(8,'Wall-Mountable TV',700001,800000);
insert into gift values(9,'Drum Washing Machine',800001,900000);
insert into gift values(10,'Refrigerator',900001,1000000);

DROP TABLE customer;

create table customer
(gno  int(8) ,
 gname varchar(30) ,
 jumin char(13) ,
 point int) ;

insert into customer values (20010001,'James Seo','7510231369824',980000);
insert into customer values (20010002,'Mel Gibson','7502241128467',73000);
insert into customer values (20010003,'Bruce Willis','7506152123648',320000);
insert into customer values (20010004,'Bill Pullman','7512251063421',65000);
insert into customer values (20010005,'Liam Neeson','7503031639826',180000);
insert into customer values (20010006,'Samuel Jackson','7601232186327',153000);
insert into customer values (20010007,'Ahnjihye','7604212298371',273000);
insert into customer values (20010008,'Jim Carrey','7609112118379',315000);
insert into customer values (20010009,'Morgan Freeman','7601202378641',542000);
insert into customer values (20010010,'Arnold Scharz','7610122196482',265000);
insert into customer values (20010011,'Brad Pitt','7711291186223',110000);
insert into customer values (20010012,'Michael Douglas','7704021358674',99000);
insert into customer values (20010013,'Robin Williams','7709131276431',470000);
insert into customer values (20010014,'Tom Hanks','7702261196365',298000);
insert into customer values (20010015,'Angela Bassett','7712141254963',420000);
insert into customer values (20010016,'Jessica Lange','7808192157498',598000);
insert into customer values (20010017,'Winona Ryder','7801051776346',625000);
insert into customer values (20010018,'Michelle Pfeiffer','7808091786954',670000);

DROP TABLE hakjum;

create table hakjum
(grade char(3) ,
 min_point  int ,
 max_point  int );

insert into hakjum values ('A+',96,100);
insert into hakjum values ('A0',90,95);
insert into hakjum values ('B+',86,89);
insert into hakjum values ('B0',80,85);
insert into hakjum values ('C+',76,79);
insert into hakjum values ('C0',70,75);
insert into hakjum values ('D',0,69);

drop table score;

create table score
(studno  int ,
 total int);

insert into score values (9411,97);
insert into score values (9412,78);
insert into score values (9413,83);
insert into score values (9414,62);
insert into score values (9415,88);
insert into score values (9511,92);
insert into score values (9512,87);
insert into score values (9513,81);
insert into score values (9514,79);
insert into score values (9515,95);
insert into score values (9611,89);
insert into score values (9612,77);
insert into score values (9613,86);
insert into score values (9614,82);
insert into score values (9615,87);
insert into score values (9711,91);
insert into score values (9712,88);
insert into score values (9713,82);
insert into score values (9714,83);
insert into score values (9715,84);

drop table p_grade;

create table p_grade
( position  varchar(30) ,
  s_age int ,
  e_age int ,
  s_year int ,
  e_year int ,
  s_pay  int ,
  e_pay  int );

insert into p_grade values ('Manager',0,24,1,2,12000000,29990000);
insert into p_grade values ('Deputy Section chief',25,28,3,5,30000000,45000000);
insert into p_grade values ('Section head',29,32,6,8,45010000,51000000);
insert into p_grade values ('Deputy department head',33,36,9,10,51010000,60000000);
insert into p_grade values ('Department head',37,40,11,13,60010000,75000000);
insert into p_grade values ('Director',41,55,14,99,75010000,100000000);

drop table t_reg;

CREATE TABLE t_reg
( text varchar(10)) ;

INSERT INTO t_reg VALUES('ABC123');
INSERT INTO t_reg VALUES('ABC 123');
INSERT INTO t_reg VALUES('ABC  123');
INSERT INTO t_reg VALUES('abc 123');
INSERT INTO t_reg VALUES('abc  123');
INSERT INTO t_reg VALUES('a1b2c3');
INSERT INTO t_reg VALUES('aabbcc123');
INSERT INTO t_reg VALUES('?/!@#$*&');
INSERT INTO t_reg VALUES('\~*().,');
INSERT INTO t_reg VALUES(123123);
INSERT INTO t_reg VALUES('123abc');
INSERT INTO t_reg VALUES('abc');

drop table p_01;
drop table p_02;

CREATE TABLE p_01
(no  int ,
 name varchar(15) );

CREATE TABLE p_02
(no int ,
 name varchar(15) );
 
drop table pt_01;
drop table pt_02;
drop table p_total;

create table pt_01
(sno varchar(8) , pno char(4) , qty int , price  int) ;

create table pt_02
(sno varchar(8) , pno char(4) , qty int , price int) ;

create table p_total
(sno  varchar(8) , pno char(4) , qty int , price int) ;

INSERT INTO pt_01 VALUES ('12010101','1000',1,500);
INSERT INTO pt_01 VALUES ('12010102','1001',1,400);
INSERT INTO pt_01 VALUES ('12010103','1003',1,300);
INSERT INTO pt_02 VALUES ('12010201','1004',1,600);
INSERT INTO pt_02 VALUES ('12010202','1000',1,500);
INSERT INTO pt_02 VALUES ('12010203','1005',1,700);

DROP Table dml_err_test;

CREATE TABLE dml_err_test
( no int primary key,
  name varchar(10));

INSERT INTO dml_err_test VALUES (1,'AAA');
INSERT INTO dml_err_test VALUES (2,'BBB');

drop table t_novalidate;

CREATE TABLE t_novalidate
( no int primary key ,
  name varchar(10) not null );

INSERT INTO t_novalidate VALUES(1,'AAA');
INSERT INTO t_novalidate VALUES(2,'BBB');
INSERT INTO t_novalidate VALUES(3,'CCC');
 
drop table t_validate;

CREATE TABLE t_validate
 ( no int PRIMARY KEY ,
   name  varchar(10) NOT NULL) ;

INSERT INTO t_validate VALUES (1,'AAA');
INSERT INTO t_validate VALUES (2,'BBB');
INSERT INTO t_validate VALUES (3,'CCC');

drop table t_enable;

CREATE TABLE t_enable
 ( no int PRIMARY KEY ,
   name varchar(10) NOT NULL) ;
	
drop table product;

CREATE TABLE product
( p_code  int(3) primary key,
  p_name varchar(20) not null ,
  p_price  int) ;


insert into product values (100,'Shrimp snack',800);
insert into product values (101,'Patato snack',900);
insert into product values (102,'Peanut snack',1000);
insert into product values (103,'Sesame snack',900);
insert into product values (104,'Onion snack',800);
insert into product values (105,'Sweet potato snack',1500);

drop table panmae;

create table panmae
( p_date varchar(8) not null,
  p_code int not null,
  p_qty  int ,
  p_total int ,
  p_store varchar(5) );


insert into panmae values ('20110101',100,3,2400,'1000');
insert into panmae values ('20110101',101,5,4500,'1001');
insert into panmae values ('20110101',102,2,2000,'1003');
insert into panmae values ('20110101',103,6,5400,'1004');
insert into panmae values ('20110102',102,2,2000,'1000');
insert into panmae values ('20110102',103,5,4500,'1002');
insert into panmae values ('20110102',104,3,2400,'1002');
insert into panmae values ('20110102',105,2,3000,'1000');
insert into panmae values ('20110103',100,10,8000,'1004');
insert into panmae values ('20110103',100,2,1600,'1000');
insert into panmae values ('20110103',100,3,2400,'1001');
insert into panmae values ('20110103',101,4,3600,'1003');
insert into panmae values ('20110104',100,2,1600,'1002');
insert into panmae values ('20110104',100,4,3200,'1003');
insert into panmae values ('20110104',100,5,4000,'1004');
insert into panmae values ('20110104',101,3,2700,'1001');
insert into panmae values ('20110104',101,4,3600,'1002');
insert into panmae values ('20110104',101,3,2700,'1003');
insert into panmae values ('20110104',102,4,4000,'1001');
insert into panmae values ('20110104',102,2,2000,'1002');
insert into panmae values ('20110104',103,2,1800,'1003');

drop table member;
create table member
(no int(4) not null ,
 name varchar(20) not null ,
 jumin char(13) primary key ,
 passwd varchar(10) not null ,
 id  varchar(10) not null unique ,
 an_key varchar(10) ,
 an_key_dap  varchar(15) );


insert into member
 values (1001,'Nicholas Cage','7510231234567','a1234','simson','wife?','Jodie Foster') ;

insert into member
 values(1002,'Jodie Foster','7509222345678','b1234','bobby','husband?','Nicholas Cage') ;

insert into member
 values (1003,'Macaulay Culkin','1410234567890','c1234','daddy','father?','Nicholas Cage');

insert into member
 values (1004,'Nicole Kidman','1609223456789','d1234','mommy','Mather?','Jodie Foster') ;
 
drop table t_reg2;
create table t_reg2
(no int , 
 ip varchar(20));

insert into t_reg2 values (1,'10.10.0.1') ;
insert into t_reg2 values (2,'10.10.10.1') ;
insert into t_reg2 values (3,'172.16.5.100') ;
insert into t_reg2 values (4,'172.61.186.2') ;
insert into t_reg2 values (5,'172.61.168.2') ;
insert into t_reg2 values (6,'255.255.255.0') ;

drop table fruit;
create table fruit (name varchar(10) , price int(5)) ;
insert into fruit values ('apple' , 100) ;
insert into fruit values ('grape' , 200) ;
insert into fruit values ('orange' ,300) ;

drop table loan;

create table loan
( l_date varchar(8) not null,
  l_code int not null,
  l_qty  int ,
  l_total int ,
  l_store varchar(5) );


insert into loan values ('20110101',100,3,2400,'1000');
insert into loan values ('20110101',101,5,4500,'1001');
insert into loan values ('20110101',102,2,2000,'1003');
insert into loan values ('20110101',103,6,5400,'1004');
insert into loan values ('20110102',102,2,2000,'1000');
insert into loan values ('20110102',103,5,4500,'1002');
insert into loan values ('20110102',104,3,2400,'1002');
insert into loan values ('20110102',105,2,3000,'1000');
insert into loan values ('20110103',100,10,8000,'1004');
insert into loan values ('20110103',100,2,1600,'1000');
insert into loan values ('20110103',100,3,2400,'1001');
insert into loan values ('20110103',101,4,3600,'1003');
insert into loan values ('20110104',100,2,1600,'1002');
insert into loan values ('20110104',100,4,3200,'1003');
insert into loan values ('20110104',100,5,4000,'1004');
insert into loan values ('20110104',101,3,2700,'1001');
insert into loan values ('20110104',101,4,3600,'1002');
insert into loan values ('20110104',101,3,2700,'1003');
insert into loan values ('20110104',102,4,4000,'1001');
insert into loan values ('20110104',102,2,2000,'1002');
insert into loan values ('20110104',103,2,1800,'1003');
