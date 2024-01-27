create or replace procedure abonner(in _adherent_id bigint, in _panier_id bigint, in _distribution_id bigint)
language plpgsql
as $procedure$
declare
  _frequence_id bigint;
  _calendrier_id bigint;
  _abonnement_id bigint;
begin
  insert into abonnements
    (adherent_id, panier_id)
    values (_adherent_id, _panier_id)
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
    and calendrier_id = _calendrier_id;
  commit;

end; $procedure$
