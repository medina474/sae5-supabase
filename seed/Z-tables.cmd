set PGHOST=aws-0-eu-central-1.pooler.supabase.com
set PGPORT=6543
set PGUSER=postgres.qjnieztpwnwroinqrolm
set PGPASSWORD=7QiavT8a1Avzuj0DYEzz

psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "truncate table jardins cascade;"
