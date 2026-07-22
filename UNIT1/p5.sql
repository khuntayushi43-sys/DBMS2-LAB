--Write a PL/SQL block which converts temperature from Celsius to Fahrenheit
set serveroutput on
declare
    celsius     Number:= &celsius;
    fahrenheit  Number;
begin
    fahrenheit := (celsius * 9/5) + 32;

    DBMS_OUTPUT.PUT_LINE('Temperature in Celsius:'||celsius||'C');
    DBMS_OUTPUT.PUT_LINE('Temperature in Fahrenheit:'||fahrenheit||'F');
end;
/