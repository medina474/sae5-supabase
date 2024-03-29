
create table saisons (
  saison_id bigint not null,
  jardin_id bigint not null,
  saison text,
  date_debut date,
  date_fin date
);

alter table saisons alter column saison_id add generated by default as identity (
  sequence name saison_id_seq
  start with 1
  increment by 1
  no minvalue
  no maxvalue
  cache 1
);

alter table only saisons
    add constraint saisons_pkey primary key (saison_id);

alter table only saisons
  add constraint saisons_jardin_id_fkey
  foreign key (jardin_id) references jardins(jardin_id) on delete cascade;

alter table saisons enable row level security;

create policy "Lecture publique"
on saisons
as permissive
for select
to public
using (true);


-- frequences

create table frequences (
  frequence_id bigint not null,
  jardin_id bigint,
  frequence text
);

alter table frequences alter column frequence_id add generated by default as identity (
  sequence name frequence_id_seq
  start with 1
  increment by 1
  no minvalue
  no maxvalue
  cache 1
);

alter table only frequences
  add constraint frequences_pkey primary key (frequence_id);
