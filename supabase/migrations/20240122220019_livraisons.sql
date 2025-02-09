create type livraison as enum (
  'à livrer',
  'livré',
  'non pris',
  'perdu'
);

create table livraisons (
  livraison_id bigint not null,
  jardin_id bigint not null,
  abonnement_id bigint not null, -- abonnement -> abonne
  distribution_id bigint not null, -- depot
  produit_id bigint not null,
  qte numeric  not null default '1'::numeric,
  livre livraison not null default  'à livrer',
  planning_id bigint not null -- jour
);

create table livraisons_import (
  id_livraison bigint,
  semaine smallint,
  livre smallint,
  qte numeric,
  depot int,
  annee int,
  jour date,
  produit_id int,
  id_abonnement bigint 
);

alter table livraisons 
  alter column livraison_id 
  add generated by default as identity;

alter table livraisons
  add constraint livraison_pkey primary key (livraison_id);


alter table livraisons
  add constraint livraisons_jardin_id_fkey
  foreign key (jardin_id) references jardins (jardin_id) on delete cascade not valid;

alter table livraisons
  validate constraint livraisons_jardin_id_fkey;

alter table livraisons
  add constraint livraisons_abonnement_id_fkey
  foreign key (abonnement_id) references abonnements(abonnement_id) on delete cascade not valid;

alter table livraisons
  validate constraint livraisons_abonnement_id_fkey;

alter table livraisons
  add constraint livraisons_distribution_id_fkey
  foreign key (distribution_id) references distributions(distribution_id) not valid;

alter table livraisons
  validate constraint livraisons_distribution_id_fkey;




alter table livraisons enable row level security;

create policy "Lecture publique"
on livraisons
as permissive
for select
to public
using (true);
