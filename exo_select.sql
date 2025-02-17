-- Affiche le nom, fonction et salaire de l'employée 7902
DECLARE
    v_nom VARCHAR2(10);
    v_fonction VARCHAR2(15);
    v_salaire NUMBER;

BEGIN
    SELECT ename, job, sal
    INTO v_nom, v_fonction, v_salaire
    FROM emp
    WHERE empno = 7902;

    DBMS_OUTPUT.PUT_LINE(v_nom || ' est une ' || v_fonction || ' avec un salaire de ' || v_salaire);
END;
/