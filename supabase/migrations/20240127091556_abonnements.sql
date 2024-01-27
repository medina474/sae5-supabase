alter table "public"."abonnements" drop constraint "abonnements_adherent_id_fkey";

alter table "public"."livraisons" drop constraint "livraisons_abonnement_id_fkey";

alter table "public"."abonnements" add constraint "abonnements_adherent_id_fkey" FOREIGN KEY (adherent_id) REFERENCES adherents(adherent_id) ON DELETE CASCADE not valid;

alter table "public"."abonnements" validate constraint "abonnements_adherent_id_fkey";

alter table "public"."livraisons" add constraint "livraisons_abonnement_id_fkey" FOREIGN KEY (abonnement_id) REFERENCES abonnements(abonnement_id) ON DELETE CASCADE not valid;

alter table "public"."livraisons" validate constraint "livraisons_abonnement_id_fkey";

set check_function_bodies = off;

CREATE OR REPLACE PROCEDURE public.abonner(IN _adherent_id bigint, IN _panier_id bigint, IN _distribution_id bigint)
 LANGUAGE plpgsql
AS $procedure$
declare
  _jardin_id bigint;
  _saison_id bigint;
  _frequence_id bigint;
  _calendrier_id bigint;
  _abonnement_id bigint;
  _date_debut date;
  _date_fin date;
begin
  
  select jardin_id, saison_id 
    into _jardin_id, _saison_id
    from adhesions a 
    where adherent_id = _adherent_id and saison_id = 5;
  
  select s.date_debut, s.date_fin 
    into _date_debut, _date_fin
    from saisons s 
    where saison_id = _saison_id;
  
  insert into abonnements
    (adherent_id, panier_id, montant, nombre)
    select _adherent_id, _panier_id, prix, quantite from paniers where panier_id = _panier_id
    returning abonnement_id into _abonnement_id;

  select frequence_id into _frequence_id from paniers where panier_id = _panier_id;

  select calendrier_id into _calendrier_id
    from tournees
    join distributions on distributions.tournee_id = tournees.tournee_id
    where distribution_id = _distribution_id;

  insert into public.livraisons
  (jardin_id, abonnement_id, distribution_id, qte)
  select 2, _abonnement_id, _distribution_id, quantite
    from plannings
    where quantite > 0
    and frequence_id = _frequence_id
    and calendrier_id = _calendrier_id
    and jour between _date_debut and _date_fin;
  commit;

end; $procedure$
;


