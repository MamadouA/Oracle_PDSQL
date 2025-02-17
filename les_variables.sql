DECLARE
    nom VARCHAR2(10);
    age NUMBER(10) := 25;

BEGIN
    nom := 'Diop';
    DBMS_OUTPUT.PUT_LINE('Bonjour ' ||nom|| ' vous avez ' ||age|| ' ans.');
END;

/

