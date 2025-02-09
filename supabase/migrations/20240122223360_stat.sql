

create view stat_adherents_profils as
select j.jardin_id, j.jardin, p.profil, 
    count(a.*) as nb_adherents
  from jardins j
    left join adherents a on a.jardin_id = j.jardin_id
    left join profils p on p.profil_id = a.profil_id 
  group by j.jardin_id, p.profil;

create view stat_depots as
select j.jardin_id, j.jardin,
  count(d.*) as nb_depots
  from jardins j
    left join depots d on d.jardin_id = j.jardin_id
  group by j.jardin_id;




create view stat_adherents_abonnements as
select a2.saison_id, count(distinct a.adherent_id) 
  from adherents a 
    join abonnements a2 on a2.adherent_id = a.adherent_id
  group by a2.saison_id;

create view stat_livraisons_produits as 
select p.produit, count(qte) 
  from livraisons l
join produits p on l.produit_id = p.produit_id
group by (p.produit);

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