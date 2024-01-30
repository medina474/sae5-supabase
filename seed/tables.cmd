set JARDIN=%JARDIN%

:: JARDINS, localisation et contact

set TABLE=jardins
set PK=jardin_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

set TABLE=adresses
set PK=adresse_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -f adresses.sql

set TABLE=contacts
set PK=contact_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -f contacts.sql

:: Dépôts

set TABLE=depots
set PK=depot_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

:: Saisons, fermetures et jours fériés

set TABLE=saisons
set PK=saison_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%JARDIN%/%TABLE%.csv' WITH (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

set TABLE=fermetures
set PK=fermeture_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

set TABLE=feries
set PK=ferie_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

:: Adhérents et adhésions

set TABLE=adherents
set PK=adherent_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE%(adherent_id,jardin_id,adherent,depot_id,email,date_sortie) FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

set TABLE=adhesions
set PK=adhesion_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE%(adhesion_id,adherent_id,jardin_id,saison_id,date_adhesion,montant) FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

:: Produits, fréquences, paniers

set TABLE=produits
set PK=produit_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

set TABLE=frequences
set PK=frequence_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

set TABLE=paniers
set PK=panier_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

:: Calendriers, plannings

set TABLE=calendriers
set PK=calendrier_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

set TABLE=plannings
set PK=planning_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

:: Préparations, tournées et points de distribution

set TABLE=preparations
set PK=preparation_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

set TABLE=tournees
set PK=tournee_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

set TABLE=distributions
set PK=distribution_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

:: Modes de paiement

set TABLE=modes_paiement
set PK=mode_paiement_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%TABLE%.csv' (FORMAT CSV, header, ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

:: Fournisseurs

set TABLE=fournisseurs
set PK=fournisseur_id
psql -h %PGHOST% -p %PGPORT% -d postgres -U %PGUSER% -c "\COPY %TABLE% FROM '../data/%JARDIN%/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"
