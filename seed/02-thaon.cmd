@echo off
set PGPASSWORD=postgres

call tables.cmd 2-thaon

psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -f abonner.sql
