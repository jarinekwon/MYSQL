-- 사원 급여조정 프로시저

use atom;
-- mySQL 방식
delimiter // -- $$ AA -- 2개 문자 추가
-- ORACLE 방식
create procedure adjust_sal(v_flag varchar(20), v_empno int, v_pct int)
begin
	if v_flag = 'increase' then 
		update emp set sal = sal+(sal*(v_pct/100))
        where empno = v_empno;
    else
    update emp set sal = sal-(sal*(v_pct/100))
        where empno = v_empno;
    end if;
end