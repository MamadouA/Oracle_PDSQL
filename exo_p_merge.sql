
CREATE OR REPLACE  PROCEDURE p_merge
IS
BEGIN
    MERGE INTO departement
    USING dept 
    ON(dept.deptno = departement.deptno)
    WHEN MATCHED THEN
    UPDATE SET departement.dname = dept.dname, departement.loc = dept.loc
    WHEN NOT MATCHED THEN 
    INSERT VALUES(dept.deptno, dept.dname, dept.loc);
END p_merge; --ou END seulement 
/