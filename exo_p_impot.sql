CREATE OR REPLACE PROCEDURE p_impot(matricule emp.empno%TYPE, taux NUMBER)
IS
	v_nom emp.ename%TYPE;
	v_salaire emp.sal%TYPE;
    v_impot NUMBER;
    v_sal_net NUMBER;
BEGIN
	SELECT ename, sal
	INTO v_nom, v_salaire
   	FROM emp
    WHERE empno = matricule;

    v_impot := v_salaire * taux;
    v_sal_net := v_salaire - v_impot;

	dbms_output.put_line(v_nom||' paye '||v_impot||'$ d''impot et a un salaire net de '||v_sal_net || '$.');
END p_impot;
/