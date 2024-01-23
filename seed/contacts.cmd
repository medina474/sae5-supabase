@echo off
set PGPASSWORD=postgres
set TABLE=contacts
set PK=contact_id
psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE% FROM '../data/%TABLE%.csv' (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

psql -h localhost -p 54322 -d postgres -U postgres -f contacts.sql
