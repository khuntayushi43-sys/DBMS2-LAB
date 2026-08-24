set serveroutput on

declare
    cursor c1 is
        select * from emp
        where deptno = &dept_no;

    e emp%rowtype;
    no_dept_found exception;
    cnt number := 0;

begin
    open c1;

    loop
        fetch c1 into e;
        exit when c1%notfound;

        insert into emp_backup
        values (e.empid, e.empname, e.deptno, e.salary);

        cnt := cnt + 1;
    end loop;

    close c1;

    if cnt = 0 then
        raise no_dept_found;
    end if;

    dbms_output.put_line(cnt || ' records inserted successfully.');

exception
    when no_dept_found then
        dbms_output.put_line('NO_DEPT_FOUND: No records found for entered DEPT_NO.');
end;
/