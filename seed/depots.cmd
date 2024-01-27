@echo off
set PGPASSWORD=postgres
set TABLE=depots
set PK=depot_id
psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE% FROM '../data/thaon/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE% FROM '../data/iut/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"
psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE% FROM '../data/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

