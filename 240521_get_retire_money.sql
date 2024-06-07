-- 사원의 퇴직급여를 구하는 함수

delimiter //
create function get_retire_money(v_empno int) returns int
begin
	declare v_sal int;
	select (sal + ifnull(comm, 0)) * round(timestampdiff(month, hiredate, now())/12, 0) into v_sal
    from emp where empno = v_empno;
    return v_sal;
end