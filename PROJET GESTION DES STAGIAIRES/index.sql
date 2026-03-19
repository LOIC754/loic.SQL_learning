-------------------------------------------------------------------------
------------------script de creation des index --------------------------
-------------------------------------------------------------------------

---------definition du schema a utiliser 
SET SEARCH_PATH="I_RH";


--------------table N°1 "I_RH"."TB_STAGIAIRE"----------------------------
------------------------------------------------------------------------
CREATE INDEX "IDX_NOM_PREN_STAGIAIRE";
ON "TB_STAGIAIRE" USING BTREE ("LB_NOM_STAGIAIRE","LB_PREN_STAGIAIRE");




--------------table N°2 "I_RH"."TB_TYPE_CONTRAT"----------------------------
------------------------------------------------------------------------
CREATE INDEX "IDX_LB_TYPE _CONTRAT";
ON "TB_TYPE_CONTRAT" USING BTREE ("LB_TYPE_CONTRAT");




--------------table N°3 "I_RH"."TB_EQUIPE"----------------------------
------------------------------------------------------------------------
CREATE INDEX "IDX_LB_RESPONSABLE_EQUIPE";
ON "TB_EQUIPE" USING BTREE ("LB_RESPONSABLE_EQUIPE");







--------------table N°4 "I_RH"."TB_CONTRAT"----------------------------
------------------------------------------------------------------------
CREATE INDEX "IDX_DT_DEBUT";
ON "TB_CONTRAT" USING BTREE ("DT_debut");










--------------table N°5 "I_RH"."TB_AFFECTATION_EQUIPE"----------------------------
------------------------------------------------------------------------
CREATE INDEX "IDX_LB_RESPONSABLE_EQUIPE";
ON "TB_AFFECTATION_EQUIPE" USING BTREE ("DT_FIN");



