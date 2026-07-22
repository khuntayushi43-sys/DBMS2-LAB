--defi.8
set serveroutput on
DECLARE
    v_eid NUMBER;
    v_name VARCHAR2(30);
    v_salary NUMBER;
BEGIN
    v_eid := &Enter_EID;

    SELECT EName, BasicSal
    INTO v_name, v_salary
    FROM EMPLOYEE
    WHERE EID = v_eid
    AND ROWNUM = 1;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Gross Salary: ' || (v_salary * 1.60));

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
END;
/
