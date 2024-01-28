@echo off
set PGPASSWORD=postgres

call A-tables.cmd 2-thaon
call B-tables.cmd 2-thaon
call C-tables.cmd 2-thaon
call D-tables.cmd 2-thaon
