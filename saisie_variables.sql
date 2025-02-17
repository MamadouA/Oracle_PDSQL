-- Affiche le nom et l'âge de l'utilisateur
ACCEPT nom PROMPT 'Donnez votre nom: ';
ACCEPT age PROMPT 'Donnez votre âge: ';

DECLARE
    v_nom VARCHAR2(10) := '&nom';
    v_age NUMBER(10) := &age;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Bonjour ' ||v_nom|| ' vous avez ' ||v_age|| ' ans.');
END;

/

