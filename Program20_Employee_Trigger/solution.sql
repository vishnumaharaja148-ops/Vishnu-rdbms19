-- Create Employee table
CREATE TABLE Employee (
    EmployeeID NUMBER,
    EmployeeName VARCHAR2(50),
    Salary NUMBER
);

-- Create trigger
CREATE OR REPLACE TRIGGER emp_insert_trigger
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('New employee record inserted successfully.');
END;
/

-- Enable output
SET SERVEROUTPUT ON;

-- Insert a new employee
INSERT INTO Employee
VALUES (101, 'Arun', 25000);

COMMIT;
