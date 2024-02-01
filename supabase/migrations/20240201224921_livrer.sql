drop view if exists "public"."check_livraisons_feries";

set check_function_bodies = off;

create or replace view "public"."check_livtaisons_feries" as  SELECT p.jour
   FROM (plannings p
     JOIN feries f ON ((f.jour = p.jour)));


CREATE OR REPLACE FUNCTION public.adherer()
 RETURNS integer
 LANGUAGE plpgsql
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



CREATE OR REPLACE FUNCTION public.changer_date_livraison()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
begin
	update livraisons set jour = new.jour where jour = old.jour;
	return new;
end; $function$
;

create trigger change_date_planning after
update
    on
    public.plannings for each row execute function changer_date_livraison();
