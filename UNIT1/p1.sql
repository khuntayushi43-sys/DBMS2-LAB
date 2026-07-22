--print simple int
set serveroutput on
declare
 p number:=&p;
 r number:=&r;
 n number:=&n;
 si number;

begin
 si:=p*r*n/100;
dbms_output.put_line('simple int:'||si);

end;
/