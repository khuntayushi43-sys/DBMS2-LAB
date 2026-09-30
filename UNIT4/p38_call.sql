set serveroutput on;

declare
    xempid number := &xempid;
    xresult varchar2(50);
begin
    search_emp(xempid, xresult);
    dbms_output.put_line(xresult);
end;
/