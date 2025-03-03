
create table saisons (
  saison_id bigint not null,
  jardin_id bigint not null,
  saison text,
  date_debut date,
  date_fin date
);

alter table saisons 
  alter column saison_id 
  add generated by default as identity;

alter table only saisons
  add primary key (saison_id);

alter table only saisons
  add foreign key (jardin_id) references jardins on delete cascade;

alter table saisons enable row level security;

create policy "Lecture publique"
on saisons
as permissive
for select
to public
using (true);

alter table only cotisations
  add foreign key (saison_id) references saisons;
  
-- frequences

create table frequences (
  frequence_id bigint not null,
  jardin_id bigint,
  frequence text
);

alter table frequences 
  alter column frequence_id 
  add generated by default as identity;

alter table only frequences
  add primary key (frequence_id);
