----COPIE DES DONNE PRESENTE DANS LES FICHIER 
----CSV DANS NOS DIFFRENTES TABLES 



---1.DONNE TABLE STAGIAIRES

---- selectionnons les données presente dans la premiere table 
---TB_STAGIAIRES pour cela selection le bon shema 
SET SEARCH_PATH="RH"
SELECT * FROM "TB_STAGIAIRES";

--SUPRESSION DES DONNE PRESENTE 
--DANS LA TABLE TB_STAGIAIRES AVENT DE RAJOUTER LES NOUVELLE 

TRUNCATE "TB_STAGIAIRES" CASCADE;

--copi des donnes presente dans le fichier csv nomme TB_STAGIAIRES.csv

--COPY "TB_STAGIAIRES"
--FROM 'C:\Users\loica\OneDrive\Desktop\loic_gitup\loic.SQL_learning\PROJET GESTION DES STAGIAIRES\TB_STAGIAIRE.CSV'
--DELIMITER '|'
--CSV HEADER;

--vu qu la methode copy ne marchai pas parce que psgres n'as pas d'otorisation 
--pour suivent le chemin venant au fichier cvs alors j'ai utiliser une autres 
--methode d'importation dans postgres 
-- clique droit sur la table concerne "TB_STAGIAIRES" puis clique sur 
--import export , puis selection le fichier de donnes et selectionne le type 
--dans option tu active le header et le de delimiter '|'
-- pour verifier l'importation on rexecute le ligne set et select *


---2.DONNE DE LA TABLE TB_TYPE_CONTRAT

SET SEARCH_PATH="RH"
SELECT * FROM "TB_TYPE_CONTRAT";
TRUNCATE "TB_TYPE_CONTRAT" CASCADE;


---3.DONNE DE LA TABLE TB_EQUIPE

SET SEARCH_PATH="RH"
SELECT * FROM "TB_EQUIPE";
TRUNCATE "TB_EQUIPE" CASCADE;

---4.DONNE DE LA TABLE TB_CONTRAT

SET SEARCH_PATH="RH"
SELECT * FROM "TB_CONTART";
TRUNCATE "TB_CONTRAT" CASCADE;


--car il dans la table que nous avons cree on as pas mis not null sur colunes DT_ARRET_CONTRAT  et LB_M0TIF
ALTER TABLE "RH"."TB_CONTART"
ALTER COLUMN "DT_ARRET_CONTRAT" DROP NOT NULL;

ALTER TABLE "RH"."TB_CONTART"
ALTER COLUMN "LB_MOTIF_ARRET" DROP NOT NULL;



---5.DONNE DE LA TABLE TB_AFFECTATION_EQUIPE

SET SEARCH_PATH="RH"
SELECT * FROM "TB_AFFECTATION_EQUIPE";
TRUNCATE "TB_AFFECTATION_EQUIPE" CASCADE;