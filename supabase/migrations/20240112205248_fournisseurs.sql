create table fournisseurs (
  fournisseur_id bigint not null,
  jardin_id bigint not null,
  fournisseur text,
  tva text,
  adresse_id bigint
);

alter table fournisseurs 
  alter column fournisseur_id 
  add generated by default as identity;

alter table only fournisseurs
  add primary key (fournisseur_id);

alter table only fournisseurs
  add foreign key (jardin_id) references jardins on delete cascade;

alter table fournisseurs
  add foreign key (adresse_id) references adresses on delete set null not valid;

alter table fournisseurs
  validate constraint fournisseurs_adresse_id_fkey;

alter table fournisseurs enable row level security;

create policy "Lecture publique"
on fournisseurs
as permissive
for select
to public
using (true);
