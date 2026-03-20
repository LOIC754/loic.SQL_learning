-------------------------------------------------------------------------
------------------script de creation des index --------------------------
-------------------------------------------------------------------------

---------definition du schema a utiliser 
SET SEARCH_PATH="RH";


--------------table N°1 Creation de l'index de la table "TB_STAGIAIRE"-
------------------------------------------------------------------------
CREATE INDEX "IDX_NOM_PREN_STAGIAIRE"
ON "TB_STAGIAIRES" USING BTREE ("LB_NOM_STAGIAIRE","LB_PREN_STAGIAIRE");


-----table N°2 creation de l'index pour la table "TB_TYPE_CONTRAT"
------------------------------------------------------------------------
CREATE INDEX "IDX_LB_TYPE _CONTRAT"
ON "TB_TYPE_CONTRAT" USING BTREE ("LB_TYPE_CONTRAT");




------table N°3 creation index de la table"TB_EQUIPE"------
------------------------------------------------------------------------
CREATE INDEX "IDX_LB_RESPONSABLE_EQUIPE"
ON "TB_EQUIPE" USING BTREE ("LB_RESPONSABLE_EQUIPE");



------table N°4 creation de l'index pour la table "TB_CONTRAT"-----
CREATE INDEX "IDX_DT_DEBUT"
ON "TB_CONTART" USING BTREE ("DT_DEBUT");

CREATE INDEX "IDX_DT_FIN"
ON "TB_CONTART" USING BTREE ("DT_FIN");

CREATE INDEX "IDX_NB_SALAIR"
ON "TB_CONTART" USING BTREE ("NB_SALAIR");



---table N°5 CEATION DE L'INDEX DE LA TABLE "TB_AFFECTATION_EQUIPE"---
------------------------------------------------------------------------
CREATE INDEX "IDX_DT_FIN_AFFECTAION_EQUIPE"
ON "TB_AFFECTATION_EQUIPE" USING BTREE ("DT_FIN");



