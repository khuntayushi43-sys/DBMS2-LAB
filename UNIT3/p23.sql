set serveroutput on;

declare
    x_name emp.empname%type;
    x_salary emp.salary%type;

begin
    x_name := '&name';

    select salary into x_salary from emp where lower(empname) = lower(x_name);

    dbms_output.put_line('employee name: ' || x_name);
    dbms_output.put_line('basic salary: ' || x_salary);

exception
    when no_data_found then
        dbms_output.put_line('employee not found');
end;
/