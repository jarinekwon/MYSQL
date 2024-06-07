-- mySQL 방식
delimiter // -- $$ AA -- 2개 문자 추가
-- ORACLE 방식
create procedure pr1(a int)
begin
	select * from emp where deptno = a;
end