create view stat_adherents_abonnements as
select a2.saison_id, count(distinct a.adherent_id) 
  from adherents a 
    join abonnements a2 on a2.adherent_id = a.adherent_id
  group by a2.saison_id;

create view stat_livraisons_depots as
select d2.depot, sum(qte) 
from livraisons l
join distributions d  on d.distribution_id = l.distribution_id
join depots d2 on d2.depot_id = d.depot_id 
group by (d2.depot);

create view stat_depots_adherents as
select d2.depot, count(distinct a.adherent_id)
from livraisons l
join distributions d  on d.distribution_id = l.distribution_id
join depots d2 on d2.depot_id = d.depot_id 
join abonnements a on a.abonnement_id = l.abonnement_id 
group by d2.depot;