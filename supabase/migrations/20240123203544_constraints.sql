alter table adhesions
  add constraint adhesions_un unique (adherent_id,jardin_id,saison_id)
