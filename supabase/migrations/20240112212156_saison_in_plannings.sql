alter table adhesions add column saison_id bigint;

alter table adhesions alter column adherent_id set not null;
alter table adhesions alter column jardin_id set not null;
