alter table adhesions
  add constraint adhesions_saison_id_fkey
  foreign key (saison_id) references saisons(saison_id) on delete cascade not valid;

alter table adhesions
  validate constraint adhesions_saison_id_fkey;

alter table fournisseurs
  add constraint fournisseurs_adresse_id_fkey
  foreign key (adresse_id) references adresses(adresse_id) on delete set null not valid;

alter table fournisseurs
  validate constraint fournisseurs_adresse_id_fkey;

alter table jardins
  add constraint jardins_adresse_id_fkey
  foreign key (adresse_id) references adresses(adresse_id) on delete set null not valid;

alter table jardins
  validate constraint jardins_adresse_id_fkey;

alter table jardins
  add constraint jardins_contact_id_fkey
  foreign key (contact_id) references contacts(contact_id) on delete set null not valid;

alter table jardins
  validate constraint jardins_contact_id_fkey;

alter table preparations
  add constraint preparations_jardin_id_fkey
  foreign key (jardin_id) references jardins(jardin_id) on delete cascade not valid;

alter table preparations
  validate constraint preparations_jardin_id_fkey;
