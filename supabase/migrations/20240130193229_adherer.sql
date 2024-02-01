set check_function_bodies = off;

create or replace function adherer(_saison_id_next bigint)
 returns int
 language plpgsql
as $function$
declare
  _nb bigint;
begin

with insertion as (
insert into adhesions (jardin_id, adherent_id, date_adhesion, montant, saison_id)
select a.jardin_id, a.adherent_id, now(), 30, _saison_id_next
from adherents a
where a.date_sortie is null returning *)
select count(*) into _nb from insertion;

return _nb;

end; $function$;
