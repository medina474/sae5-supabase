@echo off
set PGPASSWORD=postgres

call A-tables.cmd 05-limousin
call B-tables.cmd 05-limousin
