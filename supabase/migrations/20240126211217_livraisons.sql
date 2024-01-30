alter table livraisons
  drop constraint livraison_jardin_id_fkey;

alter table livraisons drop column saison_id;
alter table livraisons drop column semaine;
alter table livraisons add jour date null;

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

alter table livraisons
  add constraint livraisons_jardin_id_fkey
  foreign key (jardin_id) references jardins(jardin_id) on delete cascade not valid;

alter table livraisons
  validate constraint livraisons_jardin_id_fkey;
