create table member2
(id varchar(20) primary key
, pw varchar(20)
, name varchar(20)
, class int
, tel varchar(20)
);

select * from member2;
select id, pw, name, class, tel from member2;
insert into member2 values('tyBird', 'ab11', '김태은', 1, '010-293-4874');
insert into member2 values('yjWood', 'abcd', '이은정', 1, '010-923-1245');
insert into member2 values('jinBear', '3333', '조진이', 2, '010-2022-7244');

delete from member2 where id = 'aaa';
delete from member2 where id = 'jinBear';