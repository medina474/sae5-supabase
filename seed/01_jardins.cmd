@echo off
set PGPASSWORD=postgres
set TABLE=jardins
set PK=jardin_id

psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE% FROM '../data/1-iut/%TABLE%.csv' (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"
psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE% FROM '../data/2-thaon/%TABLE%.csv' (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"
psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE% FROM '../data/3-oasis/%TABLE%.csv' (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"
psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE% FROM '../data/4-lille/%TABLE%.csv' (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"
psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE% FROM '../data/5-limousin/%TABLE%.csv' (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"
psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE% FROM '../data/6-lozere/%TABLE%.csv' (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"
