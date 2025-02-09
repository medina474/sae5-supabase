-- nombre de jours de livraison par calendrier
create view detail_calendriers
as select c.calendrier_id,
    c.calendrier,
    s.saison,
    count(p.*) as dates
  from calendriers c
    left join plannings p on p.calendrier_id = c.calendrier_id
    join saisons s on s.jardin_id = c.jardin_id and p.jour >= s.date_debut and p.jour <= s.date_fin
  group by c.calendrier_id, s.saison_id, s.saison;

create view detail_tournees
as select t.tournee_id, t.tournee, d.distribution_id, d2.depot, d.ordre 
  from tournees t
    join distributions d on d.tournee_id = t.tournee_id
    join depots d2 on d2.depot_id = d.depot_id 
  order by t.ordre, d.ordre;

create view gpao_tournees
as select t.tournee_id, tournee, jour, produit, count(qte)
  from tournees t
  join distributions d on d.tournee_id = t.tournee_id
  join livraisons l on l.distribution_id = d.distribution_id
  join plannings p2 on p2.planning_id = l.planning_id 
  join produits p on p.produit_id = l.produit_id
where l.livre = 'à livrer'
and date_part('week',p2.jour) = date_part('week',now())
group by t.tournee_id, tournee, jour, produit;

create view gpao_depots
as select t.tournee_id, tournee, jour, d2.depot, produit, count(qte)
  from tournees t
    join distributions d on d.tournee_id = t.tournee_id
    join livraisons l on l.distribution_id = d.distribution_id
    join plannings p2 on p2.planning_id = l.planning_id 
    join produits p on p.produit_id = l.produit_id
    join depots d2 on d2.depot_id = d.depot_id
where l.livre = 'à livrer'
and date_part('week',p2.jour) = date_part('week',now())
group by t.tournee_id, tournee, jour, d2.depot, produit;

