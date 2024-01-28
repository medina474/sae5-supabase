@echo off
set PGPASSWORD=postgres

call A-tables.cmd 1-iut

set TABLE=fournisseurs
set PK=fournisseur_id
psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE% FROM '../data/1-iut/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"
