CREATE OR REPLACE PROCEDURE P_delete(num_dept dept.deptno%TYPE)
IS 

BEGIN 
    DELETE dept 
    WHERE deptno = num_dept;
END;
/
