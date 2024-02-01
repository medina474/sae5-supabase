set PGHOST=aws-0-eu-central-1.pooler.supabase.com
set PGPORT=6543
set PGUSER=postgres.ytpaqpikqarnveticqhl
set PGPASSWORD=7QiavT8a1Avzuj0DYEzz

::set PGHOST=localhost
::set PGPORT=54322
::set PGUSER=postgres
::set PGPASSWORD=postgres

psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -f abonner.sql
