--Create a row-level trigger for the customers table that would fire for UPDATE operations performed on the CUSTOMERS table. This trigger should display the salary difference between the old values and new values

CREATE OR REPLACE TRIGGER TRG1
BEFORE UPDATE ON CUSTOMERS FOR EACH ROW
WHEN(NEW.ID > 0)
DECLARE
SAL_DIFFERENCE NUMBER;
BEGIN
SAL_DIFFERENCE:=:NEW.SALARY-:OLD.SALARY;
DBMS_OUTPUT.PUT_LINE('OLD SALARY:'||:OLD.SALARY);
DBMS_OUTPUT.PUT_LINE('NEW SALARY:'||:NEW.SALARY);
DBMS_OUTPUT.PUT_LINE('SALARY DIFFERENCE:'||SAL_DIFFERENCE);
END;
/