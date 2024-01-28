@echo off
set PGPASSWORD=postgres

call A-tables.cmd 3-oasis
call B-tables.cmd 3-oasis
call C-tables.cmd 3-oasis
