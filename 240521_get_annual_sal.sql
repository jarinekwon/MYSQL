-- 사원의 연봉을 구하는 함수

delimiter //
create function get_annual_sal(v_empno int) returns int
begin
	declare v_sal int;
	select (sal+ifnull(comm, 0))*12 into v_sal from emp where empno = v_empno;
    return v_sal;
end