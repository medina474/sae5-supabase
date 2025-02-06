create table plannings (
  planning_id bigint not null,
  calendrier_id bigint,
  jour date
);

alter table plannings alter column planning_id add generated by default as identity (
  sequence name plannings_planning_id_seq
  start with 1
  increment by 1
  no minvalue
  no maxvalue
  cache 1
);

alter table only plannings
  add constraint plannings_calendrier_id_fkey
  foreign key (calendrier_id) references calendriers(calendrier_id);

alter table only plannings
  add constraint plannings_pkey
  primary key (planning_id);

create view check_plannings_feries as
  select p.jour
  from (plannings p
    join feries f on ((f.jour = p.jour)));

create view check_plannings_semaine as
  select p.planning_id, p.jour, s.saison from plannings p
  join saisons s on p.jour between s.date_debut and s.date_fin
  where
    date_part ('week', p.jour) in (
      select semaine from fermetures where fermetures.saison_id = s.saison_id
    );
