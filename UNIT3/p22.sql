set serveroutput on;

declare
    x_name result.name%type;
    x_di result.di%type;

begin
    x_name := '&name';

    select di
    into x_di
    from result
    where lower(name) = lower(x_name);

    dbms_output.put_line('student name: ' || x_name);
    dbms_output.put_line('result: ' || x_di);

exception
    when no_data_found then
        dbms_output.put_line('student not found');
end;
/