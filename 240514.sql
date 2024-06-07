show tables;
select * from emp;
-- use atome; 생략가능
select ename, substr(ename, 1, 2) from emp;
-- 1 번째 자리부터 2개
select ename, replace(ename, substr(ename, 1, 2), '**') from emp;
--------------------------------------------------------------------------------------------------------------------------------------------
select 987.654
	   , round(987.654, 2)
       -- round() -> 반올림
       -- 2째 자리에서 반올림
       , round(987.654, -1)
       -- 1의 자리에서 반올림
 from dual;
 
 select 121
		, mod(121, 10)
        -- mod() -> 나머지
        , ceil(123.45)
        -- ceil -> 올림
        , floor(123.45)
        -- floor -> 내림
        , power(2, 3)
        -- power -> 승수
        , now()
        -- now -> 현재 날짜, 시간
        , 2+2
        , 2+'2' 
        -- 문자열이지만 숫자로 묵시적(자동) 형 변환
 from dual;

select now()
	   , date_format(now(), '%Y')
	   , date_format(now(), '%y')
	   , date_format(now(), '%M')
       , date_format(now(), '%b')
	   , date_format(now(), '%m')
	   , date_format(now(), '%D')
	   , date_format(now(), '%d')
	   , date_format(now(), '%a')
       -- %Y -> 년도 4자리, %y -> 년도 2자리, %M/%b -> 월 영어, %m -> 월 2자리, 
       -- %D -> 일 영어, %d -> 일 2자리 , %a -> 요일 영어 
 from dual;
 
 select 1000
	    , format(1000, 0)
	    , format(20001000, 0)
 from dual;
 
 select empno, ename, sal, comm, ifnull(comm, 0) from emp;
 -- null이면 0으로 치환
 select empno, ename, sal, comm, ifnull(comm, 100) from emp;
 -- null이면 100으로 치환
 
select empno, ename, sal, comm, if(isnull(comm), sal*0, sal+comm) 'null' from emp;
-- comm이 null이면 sal*0, 아니면 sal+comm

select case '1' when '1' then 'A'
				when '2' then 'B'
                when '3' then 'C'
				else 'etc'
                end "test"
 from dual;
 -- case가 1이면 A, 2이면 B, 3이면 C 아니면 etc, 컬럼명은 test
select case '1' when '1'='2' then 'A'
				when '1'='1' then 'B'
				else 'etc'
                end "test"
 from dual;
 -- 합쳐서 써도 됨
 
select * from t_reg; 
select * from t_reg where regexp_like(text, '[a-z]'); 
--  where regexp_like(text, '[A-Z]'); 
-- regexp_like() -> 정규식 함수
-- 알파벳만 추출(특수문자, 숫자 x), 대소문자 관계
select * from t_reg where regexp_like(text, '[a-z] '); 
-- 알파벳으로 시작하고 뒤에 공백 있는 행
select * from t_reg where regexp_like(text, '[a-z][0-9]'); 
-- 알파벳으로 시작하고 뒤에 숫자 있는 행
select * from t_reg where regexp_like(text, '[a-z] [0-9]'); 
-- 알파벳으로 시작하고 뒤에 공백, 숫자 있는 행
select * from t_reg where regexp_like(text, '[[:space:]]'); 
-- 공백 있는 행
select * from t_reg where regexp_like(text, '[a-z]{2}'); 
select * from t_reg where regexp_like(text, '[a-z]{3}'); 
select * from t_reg where regexp_like(text, '[a-z]{4}'); 
-- 알파벳이 연속 2개/3개/4개 이상 
select * from t_reg where regexp_like(text, '[0-9]{3}'); 
select * from t_reg where regexp_like(text, '[0-9]{4}'); 
-- 숫자가 연속 3개/4개 이상 
select * from t_reg where regexp_like(text, '[a-z][0-9]{1}');
select * from t_reg where regexp_like(text, '[a-z][0-9]{2}');
-- 알파벳 다음에 숫자가 연속 1개/2개 이상
select * from t_reg where regexp_like(text, '^[a-z]');
-- 첫 시작이 알파벳(^ 사용)
select * from t_reg where regexp_like(text, '^[0-9a-z]');
-- 첫 시작이 숫자나 알파벳
select name, id from student;
select name, id from student where regexp_like(id, '^M(a|o)');
-- 첫 글자가 M으로 시작하고 두 번째 글자가 a나 o
select * from t_reg  where regexp_like(text, '[a-z]$');
-- 끝이 알파벳($ 사용)
select * from t_reg  where regexp_like(text, '[0-9]$');
-- 끝이 숫자($ 사용)
select * from t_reg  where regexp_like(text, '^[^a-z]');
-- 알파벳으로 시작하지 않는 행
select * from t_reg  where regexp_like(text, '^[^0-9]');
-- 숫자로 시작하지 않는 행
select * from t_reg  where regexp_like(text, '^[^0-9a-z]');
-- 알파벳이나 숫자로 시작하지 않는 행
select * from t_reg  where regexp_like(text, '[^a-z]');
-- 알파벳으로만 구성된 행 제거
select * from t_reg  where not regexp_like(text, '[a-z]');
-- 알파벳이 들어있는 모든 행 제거
select * from t_reg  where not regexp_like(text, '[0-9]');
-- 숫자가 들어있는 모든 행 제거
select text, regexp_replace(text, '[0-9]', '*')  from t_reg;
select text, regexp_replace(text, '[[:digit:]]', '*')  from t_reg;
-- regexp_replace -> 정규(표현)식 함수
-- 숫자를 *로 변경
select regexp_replace('aaa bb  c   d', '(){1}', '') "blank"
	   , regexp_replace('aaa bb  c   d', '(){2,}', ' ') "blank"
       , regexp_replace('aaa bb  c   d', '(){3,}', ' ') "blank"
from dual;

 select count(*)
		, count(empno)
        , count(comm)
        , sum(comm)
        , avg(comm)
        , avg(ifnull(comm, 0))
 from emp;
 
 select max(sal)
		, min(sal)
        , max(hiredate)
        , min(hiredate)
        , stddev(sal)
        , variance(sal)
from emp;
select deptno
	   , avg(ifnull(sal, 0)) "avg"
from emp group by deptno;
select deptno
	   , job
       , avg(ifnull(sal, 0)) "avg"
from emp group by deptno, job;

select ename
	   , hiredate
       , sal
       ,lag(sal, 1, 0) over(order by hiredate) "lag"
       -- lag -> 값 뒤로 미루고 숫자 넣기 
       ,lag(sal, 1, 777) over(order by hiredate) "lag"
       ,lag(sal, 2, 777) over(order by hiredate) "lag"
 from emp;
 
 select ename
	   , hiredate
       , sal
       ,lead(sal, 1, 0) over(order by hiredate) "lead"
       -- lead -> 다음 값 넣기
       ,lead(sal, 2, 0) over(order by hiredate) "lead"
 from emp;
 
 select ename
       , sal
       , rank() over(order by sal) as "rank_asc"
       , rank() over(order by sal desc) as "rank_desc"
 from emp;
 
 select empno
		, ename
        , sal
        , deptno
        , job
        ,rank() over(order by sal desc) "sal_rank"
        , dense_rank() over(order by sal desc) "sal_dense_rank" 
        , row_number() over(order by sal desc) "sal_row_num" 
from emp;

create table new_table
(no int
, name varchar(10)
, birth date
);
-- 테이블 만들기
create table dept3
as
select * from dept2;
select * from dept3;
-- 모든 컬럼 다 복사
create table dept4
as
select DCODE, DNAME from dept2;
select * from dept4;
-- 특정 컬럼만 복사
create table dept5
as
select DCODE, DNAME from dept2
where 1=2;
select * from dept5;
-- 테이블의 구조(컬럼)만 가져오고 데이터 안 가져오기
create table dept6
as
select DCODE, DNAME from dept2
where DCODE in (1000, 1001, 1002);
select * from dept6;
-- 데이터 골라서 복사
alter table dept6
add (location varchar(10));
-- location 컬럼만 생성
alter table dept6
add (location2 varchar(10) default "SEOUL");
-- location2 컬럼과 SEOUL이라는 내용이 들어감
alter table dept6
rename column location2 to loc;
-- location2 -> loc 컬럼명 변경
rename table dept6 to dept7;
select * from dept7;
-- 테이블 이름 변경
desc dept7;
alter table dept7
modify column loc varchar(20);
-- 컬럼의 데이터 크기 조정
alter table dept7
drop column loc;
-- 컬럼 삭제
drop table dept7;
-- 데이터 포함 테이블 삭제
select * from dept2; -- 13건
insert into dept2(DCODE, DNAME, PDEPT, AREA)
			values(9000, 'temp_1', 1006, 'Team Area');
select * from dept2; -- insert하고 14건
insert into dept2(DCODE, DNAME, PDEPT, AREA)
			values(9001, 'temp_2', 1006, 'Team Area');
insert into dept2(DCODE, DNAME, PDEPT, AREA)
			values(9002, 'temp_3', 1006, 'Team Area');
select * from dept2; -- insert하고 16건
-- insert into 테이블명만 적고 컬럼명을 안적은 상태에서 입력내용이 컬럼 수보다 적으면 오류가 뜸
-- 모든 컬럼에 입력할 경우 컬럼 이름 생략 가능

create table t_minus
(no1 int
, no2 decimal(3)
, no3 decimal(3,2)
);
desc t_minus;
insert into t_minus values(1, 1, 1);
insert into t_minus values(1.1, 1.1, 1.1);
insert into t_minus values(-1.1, -1.1, -1.1);
insert into t_minus values(2.22, 2.22, 2.22);
insert into t_minus values(3.333, 3.333, 3.333);
insert into t_minus values(44, 44, 4);
select * from t_minus;
--------------------------------------------------------------------------------------------------------------------------------------------
-- 실습문제
select ename as 'ENAME', replace(ename, substr(ename, 2, 2), '--') as 'REPLACE' from emp where deptno = 20;
-- 2장-6
select name as 'NAME', jumin as 'JUMIN', replace(jumin, substr(jumin, 7, 7), '-/-/-/-') as 'REPLACE' from student where deptno1 = 101;
-- 2장 -7
select name as 'NAME', tel as 'TEL', replace(tel, substr(tel, instr(tel, ')')+1, 3), '***') as 'REPLACE' from student where deptno1 = 102;
-- 2장-8
select studno as 'STUDNO', name as 'NAME', birthday as 'BIRTHDAY' from student where substr(birthday, 6, 2) = 01;
select studno as 'STUDNO', name as 'NAME', birthday as 'BIRTHDAY' from student where date_format(birthday, '%m') = 01;
-- 2장-9
select empno, ename, hiredate from emp where date_format(hiredate, '%m') in ('01', '02', '03') ;
-- 2장-10
select empno, ename, sal, comm, format((sal*12)+comm, 0) from emp where ename = 'ALLEN';
-- 2장-11
select name, pay, bonus, format((pay*12)+bonus, 0) from professor where deptno = 201;
-- 2장-12
select profno, name, pay, bonus, (pay*12)+ifnull(bonus, 0) as 'total' from professor where deptno = 201;
-- 2장-13
select empno, ename, comm, if(isnull(comm), 'NULL', 'Exist') 'nvL2' from emp where deptno = 30;
-- 2장-14
select name, tel, case substr(tel, 1, instr(tel, ')')-1) 
				  when 02 then "SEOUL"
				  when 031 then "GYEONGGI"
                  when 051 then "BUSAN"
                  when 052 then "ULSAN"
                  when 055 then "GYEONGNAM"
                  else 'ETC'
                  end loc
from student where deptno1 = 201;
-- 2장-15
select name, substr(jumin, 3, 2) as 'mont', case 
											when substr(jumin, 3, 2) in ('01', '02', '03') then '1/4'
											-- when substr(jumin, 3, 2) between '01' and '03'then '1/4'
                                            -- between 써서 범위 설정해도 됨
                                            when substr(jumin, 3, 2) in ('04', '05', '06') then '2/4'
                                            when substr(jumin, 3, 2) in ('07', '08', '09') then '3/4'
                                            when substr(jumin, 3, 2) in ('10', '11', '12') then '4/4'
											end "Qua"
  from student;
  -- 2장-16
select * from emp;
select empno, ename, sal, case 
					      when sal between '1' and '1000' then 'LEVEL 1'
						  when sal between '1001' and '2000' then 'LEVEL 2'
					      when sal between '2001' and '3000' then 'LEVEL 3'
                          when sal between '3001' and '4000' then 'LEVEL 4'
                          else 'LEVEL 5'
						  end "LEVEL"
from emp order by sal desc;
-- 2장-17
select deptno
	   , round(avg(sal), 2)
from emp group by deptno having round(avg(sal), 2) >= 2000;
-- 3장-1
-- group by ~ having 조건
select empno, ename, sal, deptno, rank() over(partition by deptno order by deptno, sal desc) "rank" from emp;
select empno, ename, sal, deptno, rank() over(order by deptno, sal desc) "rank" from emp where deptno=10
union
select empno, ename, sal, deptno, rank() over(order by deptno, sal desc) "rank" from emp where deptno=20
union
select empno, ename, sal, deptno, rank() over(order by deptno, sal desc) "rank" from emp where deptno=30;
-- 3장-2
select empno, ename, sal, deptno, job, rank() over(partition by deptno, job order by sal desc) "rank" from emp;
-- 3장-3
select rank() over(order by p_total) as '', p_date, p_code, p_qty, p_total, sum(p_total) over(order by p_total) as 'total' from panmae where p_store = 1000;
-- 3장-4
select rank() over(order by p_total) as '', p_date, p_code, p_qty, p_total, sum(p_total) over(partition by p_code order by p_total) as 'total' from panmae where p_store = 1000;
-- 3장-5
select p_code, p_store, p_date, p_qty, p_total, sum(p_total) over(partition by p_code, p_store order by p_date) as 'total' from panmae;
-- 3장-6
