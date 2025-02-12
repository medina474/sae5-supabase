-- Vérifie que l'adhérent cotise bien au jardin dont il fait partie
create view check_adherent_jardin
 with (security_invoker=on)
 as
 select a.adherent_id,
    a.adherent
  from adherents a
    join adhesions d on a.adherent_id = d.adherent_id
  where a.jardin_id <> d.jardin_id;

-- Vérifie qu'un jour n'est pas planifié pendant un jour férié
create view check_plannings_feries
  with (security_invoker=on)
  as
  select p.jour
  from (plannings p
    join feries f on ((f.jour = p.jour)));

-- Vérifie qu'un jour n'est pas planifié pendant une semaine de fermeture.
create view check_plannings_semaine
  with (security_invoker=on)
  as
  select p.planning_id, p.jour, s.saison from plannings p
  join saisons s on p.jour between s.date_debut and s.date_fin
  where
    date_part ('week', p.jour) in (
      select semaine from fermetures where fermetures.saison_id = s.saison_id
    );

--create view check_livraisons_feries as
--  select l.jour
--   from (livraisons l
--     join feries f on ((f.jour = l.jour)));
