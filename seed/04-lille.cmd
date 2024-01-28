@echo off
set PGPASSWORD=postgres

call A-tables.cmd 04-lille
call B-tables.cmd 04-lille
call C-tables.cmd 04-lille
