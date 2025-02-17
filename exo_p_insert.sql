CREATE OR REPLACE PROCEDURE p_insert(num_dept NUMBER, nom VARCHAR2, localite VARCHAR2)
IS 
BEGIN
    INSERT INTO dept 
    VALUES(num_dept, nom, localite);
END;
/
