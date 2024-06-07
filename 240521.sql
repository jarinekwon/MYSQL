use atom;

select e.name, d.dname from emp2 e, dept2 d where e.deptno = d.dcode;
-- 조인
select e.name, (select dname from dept2 d where e. deptno = d.dcode) "dname" from emp2 e;
-- 스칼라 서브쿼리(속도 빠름)

call pr1(20);
select * from emp where deptno = a;
call adjust_sal('increase', 7369, 10);
select get_annual_sal(7369);
select get_retire_money(7369);
select empno "사번", ename "성명", get_annual_sal(empno) "연봉", get_retire_money(empno) "퇴직금" from emp;
--------------------------------------------------------------------------------------------------------------------------------------------
-- 실습문제
select empno, name, deptno from emp2  where deptno in (select dcode from dept2 where area = 'Pohang Main Office') order by deptno;
-- 9장-4
select name, position, format(pay, 0) as sal from emp2
where pay > (select min(pay) from emp2 where position = 'section head') order by pay desc;
select name, position, format(pay, 0) as sal from emp2
where pay > any (select pay from emp2 where position = 'section head') order by pay desc;
-- any -> 최솟값
-- 9장-5
select name, grade, weight from student
where weight < all (select weight from student where grade = 2) order by weight desc;
-- all -> 최솟값
-- 9장-6




select * from emp;
select * from dept2;
select * from student;