--Write a PL/SQL block to calculate the square and cube of the given 
number
set serveroutput on;
declare
    num Number:= &num;
    sq  Number;
    cube Number;
begin
    sq := num * num;
    cube := num * num * num;

    dbms_output.put_line('Given Number: ' || num);
    dbms_output.put_line('Square Numbe: ' || sq);
    dbms_output.put_line('Cube Number: ' || cube);
end;
/