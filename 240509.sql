SELECT * FROM atom.emp;
-- atom -> database
-- emp -> table
-- from 테이블
-- *은 전체 다 보겠다

use atom;
-- atom 데이터베이스 사용
select * from emp;
-- emp -> 사원 테이블(정해진 건 아님)
-- 12명에 부서는 3개
desc emp;
-- date -> 날짜
select empno, ename from emp;
-- * 대신 컬럼 선택해서도 조회 가능
select empno, 'good morning~!' as Good from emp;
-- 없는 데이터를 만들어서도 쓸 수 있음
-- '내용' as "컬럼명"(큰 따옴표 생략 가능)
select distinct deptno from emp;
select distinct job, ename from emp;
-- distinct -> 중복 제거
-- 가지고 온 컬럼이 여러개인 경우 모두가 중복되어야 제거
select empno, ename from emp where empno=7900;
-- 사원번호 7900만 출력
select ename, sal from emp where sal<1000;
-- 월급이 1000보다 작은 
select empno, ename, sal from emp where ename="SMITH";
select empno, ename, sal from emp where ename="smith";
select empno, ename, sal from emp where ename='SMITH';
-- 이름이 SMITH
-- 소문자여도 적용 가능
-- 작은따옴표여도 적용 가능
select * from emp where hiredate="1980-12-17";
select * from emp where hiredate="80-12-17";
select * from emp where hiredate='80-12-17';
select * from emp where hiredate='80/12/17';
-- 입사일이 80년 12월 17일
select empno, ename, sal+100, sal*1.1  from emp where deptno="10";
-- 부서번호 10번 급여인상
select * from emp where sal>4000;
-- 급여가 4000 이상
select * from emp where ename>"s";
-- s를 포함해서 s보다 뒤에 있는 이름으로 시작
select * from emp where sal between 2000 and 3000;
-- 2000 <= sal <= 3000
-- 급여가 2000에서 3000 사이
select empno, ename, sal from emp where ename between "james" and "martin";
-- james와 martin 이름 사이(jones는 james의 ja 다음이라 나옴)
select empno, ename, deptno from emp where deptno in(10, 20);
-- 부서번호가 10, 20
select empno, ename, sal from emp where sal like "1%";
-- 급여가 1로 시작
select empno, ename, sal from emp where ename like "A%";
select empno, ename, sal from emp where ename like "J%";
-- 이름이 A/J로 시작
select empno, ename, hiredate from emp where hiredate like "%17";
-- 입사일이 17일
select empno, ename, comm from emp where comm is null;
select empno, ename, comm from emp where comm is not null;
-- 커미션이 있는/없는 
select empno, ename, sal, hiredate from emp where hiredate > "81/09/08" and sal > 2000;
-- 입사일자가 81년 9월 8일 보다 뒤이고 급여가 2000 초과
select empno, ename, sal, hiredate from emp where hiredate > "81/09/08" or sal > 2000;
-- 입사일자가 81년 9월 8일 보다 뒤이거나 급여가 2000 초과
select empno, ename, sal, comm from emp where sal > 1000 and (comm  < 1000 or comm is null);
-- 급여가 1000 초과이고 커미션이 1000 미만
select empno, ename, sal, comm from emp where sal > 1000 or comm  < 1000;
-- 급여가 1000 초과이거나 커미션이 1000 미만
select empno, ename, sal, hiredate from emp order by ename asc;
-- 이름 순으로 오름차순
select empno, ename, sal, hiredate from emp order by ename desc;
-- 이름 순으로 내림차순
select empno, ename, sal, deptno from emp order by deptno desc, sal asc;
-- 부서번호 순으로 내림차순하고 급여순으로 오름차순
select empno, ename, sal, deptno from emp order by deptno;
select empno, ename, sal, deptno from emp order by 4, 3;
-- 뒤에 숫자를 적어도 그 숫자에 맞는 열로 적용
select ename, job, concat(ename, job) from emp;
-- concat -> 컬럼 내용을 합쳐줌
select job, substr(job, 3, 2), substr(job, 6, 2), substr(job, 4), substr(job, -3, 2) from emp;
-- job 컬럼 3번째 자리에서 2개 출력
-- 문자열 수를 벗어나면 표시되지 않음
-- 뒤에 몇자리를 가져올건지 안적으면 끝까지 가져옴
-- 음수로 가면 뒤로 감
SELECT Rpad(ename, 10, '-') FROM emp where deptno = 10;
-- 10칸을 못채우면 -로 오른쪽부터 채움
-------------------------------------------------------------------------------------
select * from dept;

-- dept -> 부서 테이블(정해진 건 아님)
select dname, 'its deptno', deptno from dept;
select dname, 'it''s deptno', deptno from dept;
desc dept;
-- desc -> 테이블 구조(설명)
-- int -> 정수
-- varchar -> 가변문자, 괄호 안에 숫자는 제한갯수
-------------------------------------------------------------------------------------
SELECT * FROM student;

SELECT studno, name FROM student where deptno1 = 101
union
SELECT studno, name FROM student where deptno2 = 201;
-- 중복값 제거
SELECT studno, name FROM student where deptno1 = 101
union all
SELECT studno, name FROM student where deptno2 = 201;
-- 중복값 제거X
SELECT name, id, lpad(id,10,'*') FROM student where deptno2 = 201;
-- 10칸을 못채우면 *로 왼쪽부터 채움
-------------------------------------------------------------------------------------
SELECT * FROM professor;

SELECT profno, name, lower(name), upper(name) FROM professor;
select 1 from dual;
-- dual -> temp(임시) 테이블
select abs(-352) from dual;
-- abs() -> 절대값 함수
select 'A-B-C-D', instr('A-B-C-D','-') "instr1" from dual;
-- -의 첫번째 위치를 찾아줌
-------------------------------------------------------------------------------------
-- 실습문제
show tables;
-- 1-1 
desc student;
-- 1-2
select * from student;
-- 1-3
select studno, name, id from student;
-- 1-4
select distinct deptno1 from student;
-- 1-5
select 'name' as "이름", 'birthday' as "생년월일", 'height' as "키(cm)", 'weight' as "몸무게(kg)" from student;
-- 1-6
-- 괄호가 있는 거는 큰 따옴표를 붙여줘야 작동
select name,  height, weight, (height-weight)*0.9 as 표준체중 from student;
-- 1-7
SELECT name, grade, height FROM student where height > 170 order by height desc;
-- 2-1
SELECT name, id, grade FROM student where deptno1 = 101 and grade >= 3;
-- 2-2
SELECT name, grade, height FROM student where height between 165 and 175;
-- 2-3
SELECT name, id, deptno1, deptno2 FROM student where name like "Bi%";
-- 2-4
SELECT name, pay, deptno FROM professor where bonus is null;
-- 2-5
SELECT profno, name, pay, bonus FROM professor order by pay desc;
-- 2-6
SELECT profno, name, pay, pay*12, deptno FROM professor order by deptno desc, pay*12 asc;
-- 2-7
SELECT name, pay, bonus FROM professor where (pay >= 300 and bonus is not null) or pay >= 450;
-- 2-8
SELECT profno, name FROM professor where deptno = 201
union
SELECT studno, name FROM student where deptno1 = 201;
-- 2-9
SELECT name, substr(jumin, 1, 6) as birthday FROM student where deptno1 = 101;
-- 2장-1
SELECT name, tel, instr(tel, ')') as ")" FROM student where deptno1 = 201;
-- 2장-2
SELECT name as NAME, tel as TEL, substr(tel, 1, instr(tel, ')')-1) as "AREA CODE" FROM student where deptno1 = 201;
-- 2장-3
SELECT lpad(ename, 9, '12345') as LPAD FROM emp where deptno = 10;
-- 2장-4
SELECT Rpad(ename, 9, '56789') as LPAD FROM emp where deptno = 10;
-- 2장-5