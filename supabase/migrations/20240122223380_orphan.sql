create view orphan_abonnements as
select * 
  from abonnements b
    left join adherents a on a.adherent_id = b.adherent_id
  where a.adherent_id is null;

create view orphan_distributions as
select *
  from distributions d 
    left join depots d2 on d2.depot_id = d.distribution_id  
  where d2.depot_id is null;

create view orphan_distributions_planning as
select *
  from livraisons l
    left join plannings p on p.planning_id = l.planning_id
  where p.planning_id is null;

create view adherents_sans_abonnement as
select * 
  from adherents a
    left join abonnements b on a.adherent_id = b.adherent_id
  where b.abonnement_id is null;