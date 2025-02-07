create table adherents (
  adherent_id bigint not null,
  created_at timestamp with time zone default now() not null,
  jardin_id bigint not null,
  adherent text not null,
  depot_id bigint,
  email text,
  date_sortie date
);

alter table adherents 
  alter column adherent_id 
  add generated by default as identity;

alter table only adherents
  add constraint adherents_pkey primary key (adherent_id);

alter table only adherents
  add constraint adherents_jardin_id_fkey foreign key (jardin_id) references jardins(jardin_id);

alter table adherents enable row level security;

create policy "Lecture publique"
on adherents
as permissive
for select
to public
using (true);


-- adhesions

create table adhesions (
  adhesion_id bigint not null,
  created_at timestamp with time zone default now() not null,
  adherent_id bigint not null,
  jardin_id bigint not null,
  date_adhesion date,
  montant numeric,
  saison_id bigint not null
);

alter table adhesions 
  alter column adhesion_id 
  add generated by default as identity;

alter table only adhesions
  add constraint adhesions_pkey primary key (adhesion_id);

alter table only adhesions
  add constraint adhesions_adherent_id_fkey
  foreign key (adherent_id) references adherents(adherent_id);

alter table only adhesions
  add constraint adhesions_jardin_id_fkey
  foreign key (jardin_id) references jardins(jardin_id);

alter table only adhesions
  add constraint adhesions_un
  unique (adherent_id,jardin_id,saison_id);

alter table adhesions enable row level security;

create policy "Lecture publique"
on adhesions
as permissive
for select
to public
using (true);
