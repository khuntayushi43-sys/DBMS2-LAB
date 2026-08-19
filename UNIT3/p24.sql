set serveroutput on;

declare
    x_salary employee.basicsal%type;

begin
    select basicsal into x_salary from employee where age = 50;
	dbms_output.put_line('basic salary: ' || x_salary);

exception
    when no_data_found then
        dbms_output.put_line('employee with age 50 not found');
end;
/