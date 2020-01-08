--Creation des utilisateurs
CREATE USER 'util1'@'%'IDENTIFIED BY 'passworld1';
CREATE USER 'util2'@'%'IDENTIFIED BY 'passworld2';
CREATE USER 'util3'@'%'IDENTIFIED BY 'passworld3';

GRANT ALL PRIVILEGES ON papyrusBDD.* TO 'util1'@'%'
IDENTIFIED BY 'passworld1';

GRANT SELECT -- donne le droit de selectionner dans le tableau
ON papyrus.*  -- dans tout le papyrus
TO util2
IDENTIFIED BY 'passworld2';

GRANT SELECT 
ON papyrus.fournis -- que dans 'fournis' du papyrus
TO 'util3'@'%'
IDENTIFIED BY 'passworld3';