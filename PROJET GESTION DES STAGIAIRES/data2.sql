
---CREATION DES VUES 

--selection des stagiairs actifs 
---- ce sont des tables virtiuels 
SET SEARCH_PATH="RH"
CREATE VIEW "VW_STAGIAIRE_ACTIF" AS 
SELECT * FROM "TB_STAGIAIRES" WHERE "BL_ACTIF";

--selection des stagiairs non actifs 
CREATE VIEW "VW_STAGIAIRE_NON_ACTIF" AS 
SELECT * FROM "TB_STAGIAIRES" WHERE NOT "BL_ACTIF";

-----table N°4 TB_CONSTART 
--modifier les donne des deja presentes dans une base de ou update 
UPDATE "TB_CONTART" CTR 
SET "DT_ARRET_CONTRAT" ='20223-05-03',
    "LB_MOTIF_ARRET" ='absences repetées'
WHERE "ID_CONTRAT" ='CSTG001';

SELECT * FROM "TB_CONTART" ORDER BY "ID_CONTRAT"
