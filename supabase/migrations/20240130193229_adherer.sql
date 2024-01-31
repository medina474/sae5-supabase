set check_function_bodies = off;

create or replace function public.adherer(_saison_id_prev bigint, _saison_id_next bigint)
 returns void
 language plpgsql
as $function$
begin

insert into adhesions (jardin_id, adherent_id, date_adhesion, montant, saison_id)
select h.jardin_id, a.adherent_id, now(), 30, _saison_id_next
from adherents a
join adhesions h on h.adherent_id = a.adherent_id
where a.date_sortie is null
and h.saison_id = _saison_id_prev;

end; $function$;
