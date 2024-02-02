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
