
DROP DATABASE if EXISTS mapremiereBDD; -- delet database if she's exists
CREATE DATABASE mapremiereBDD;
USE mapremiereBDD;


CREATE TABLE personne (
	per_num int AUTO_INCREMENT NOT NULL,
	per_nom VARCHAR(50),
	pre_prenom VARCHAR(50),
	per_adresse VARCHAR(50),
	per_ville VARCHAR(50),
	PRIMARY KEY (per_num)
);

CREATE TABLE groupe (
	gro_num int AUTO_INCREMENT NOT NULL,
	gro_libelle VARCHAR(50),
	PRIMARY KEY ( gro_num)
	
);

CREATE TABLE appartient (
	per_num INT ,
	gro_num INT ,
	PRIMARY KEY (per_num , gro_num),
	FOREIGN KEY (per_num) REFERENCES personne (per_num),
	FOREIGN KEY(gro_num) REFERENCES groupe (gro_num)
);	
