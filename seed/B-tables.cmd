set TABLE=adherents
set PK=adherent_id
psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE%(adherent_id,jardin_id,adherent,depot_id,email,date_sortie) FROM '../data/%1/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"

set TABLE=produits
set PK=produit_id
psql -h localhost -p 54322 -d postgres -U postgres -c "\COPY %TABLE% FROM '../data/%1/%TABLE%.csv' (FORMAT CSV, header,ENCODING 'UTF8');SELECT setval(pg_get_serial_sequence('%TABLE%', '%PK%'), (SELECT MAX(%PK%) FROM %TABLE%));"
