create table fermetures (
  fermeture_id bigint not null,
  jardin_id bigint not null,
  saison_id bigint not null,
  semaine smallint not null
);

alter table fermetures 
  alter column fermeture_id 
  add generated by default as identity;

alter table only fermetures
  add constraint fermetures_pkey primary key (fermeture_id);

alter table only fermetures
  add constraint fermetures_jardin_id_fkey foreign key (jardin_id) references jardins(jardin_id) on delete cascade;

alter table fermetures
  add constraint fermeture check (semaine <= 53);

alter table fermetures enable row level security;

create policy "Lecture publique"
on fermetures
as permissive
for select
to public
using (true);


-- jours fériés

create table feries (
  ferie_id bigint not null,
  jardin_id bigint,
  ferie text,
  jour date
);

alter table feries 
  alter column ferie_id 
  add generated by default as identity;

alter table only feries
  add constraint feries_pkey primary key (ferie_id);

alter table only feries
  add constraint feries_jardin_id_fkey foreign key (jardin_id) references jardins(jardin_id) on update cascade;

alter table feries enable row level security;

create policy "Lecture publique"
on feries
as permissive
for select
to public
using (true);
