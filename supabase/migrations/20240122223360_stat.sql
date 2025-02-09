create view stat_adherents_abonnements as
select a2.saison_id, count(distinct a.adherent_id) 
  from adherents a 
    join abonnements a2 on a2.adherent_id = a.adherent_id
  group by a2.saison_id;

