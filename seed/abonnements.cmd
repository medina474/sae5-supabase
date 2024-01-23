@echo off
set PGPASSWORD=postgres
set TABLE=abonnements
set PK=abonnement_id
psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE% (abonnement_id,adherent_id,panier_id,date_debut,nombre,montant,mode_paiement_id,saison_id) FROM '../data/%TABLE%.csv' (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"
