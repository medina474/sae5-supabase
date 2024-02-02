create or replace view check_plannings_feries as
  select p.jour
   from (plannings p
     join feries f on ((f.jour = p.jour)));

create or replace view check_plannings_semaine as
  select p.planning_id, p.jour, s.saison from plannings p
  join saisons s on p.jour between s.date_debut and s.date_fin
  where
    date_part ('week', p.jour) in (
      select semaine from fermetures where fermetures.saison_id = s.saison_id
    );

create or replace function public.adherer()
 returns integer
 language plpgsql
AS $function$
declare
  _saison_id bigint;
  _nb bigint;
begin

select saison_id into _saison_id
from saisons s order by date_debut desc;

with insertion as (
insert into adhesions (jardin_id, adherent_id, date_adhesion, montant, saison_id)
select a.jardin_id, a.adherent_id, now(), 30, _saison_id
from adherents a
where a.date_sortie is null returning *)
select count(*) into _nb from insertion;

return _nb;

end; $function$
;
