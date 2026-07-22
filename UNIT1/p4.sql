--Write a PL/SQL block which accepts measurement in feet and displays it in cm, inch and meter
set serveroutput on
declare
    feet   Number := &feet;
    inch   Number;
    cm     Number;
    meter  Number;
begin
    inch  := feet * 12;
    cm    := feet * 30.48;
    meter := feet * 0.3048;

   dbms_output.put_line('Measurement in Feet  : ' || feet);
   dbms_output.put_line('Measurement in Inches: ' || inch);
   dbms_output.put_line('Measurement in CM    : ' || cm);
   dbms_output.put_line('Measurement in Meter : ' || meter);
end;
/