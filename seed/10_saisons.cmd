@echo off
set PGPASSWORD=postgres
set TABLE=saisons
set PK=saison_id

psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE% FROM '../data/2-thaon/%TABLE%.csv' WITH (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"
psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE% FROM '../data/3-oasis/%TABLE%.csv' WITH (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"
psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE% FROM '../data/4-lille/%TABLE%.csv' WITH (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"
