create or replace procedure search_emp
(xempid in number,xresult out varchar2)
is
    xcount number;
begin
    select count(*) into xcount
    from emp
    where empid = xempid;

    if xcount > 0 then
        xresult := 'employee is present';
    else
        xresult := 'employee is not present';
    end if;
end search_emp;
/