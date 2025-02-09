create view orphan_abonnements as
select b.* 
  from abonnements b
    left join adherents a on a.adherent_id = b.adherent_id
  where a.adherent_id is null;

comment on view orphan_abonnements is 'Abonnements dont l''adhérent n''existe pas';

create view orphan_distributions as
select d.*
  from distributions d 
    left join depots d2 on d2.depot_id = d.depot_id  
  where d2.depot_id is null;

comment on view orphan_abonnements is 'Distributions dont le dépôt n''existe pas';

create view orphan_distributions_planning as
select l.*
  from livraisons l
    left join plannings p on p.planning_id = l.planning_id
  where p.planning_id is null;

create view adherents_sans_abonnement as
select a.* 
  from adherents a
    left join abonnements b on a.adherent_id = b.adherent_id
  where b.abonnement_id is null;