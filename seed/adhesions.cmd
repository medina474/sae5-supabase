@echo off
set PGPASSWORD=postgres
set TABLE=adhesions
set PK=adhesion_id
psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE%(adhesion_id,adherent_id,jardin_id,saison_id,date_adhesion,montant) FROM '../data/thaon/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"
