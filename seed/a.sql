select adherer();
select abonner(1584, 3, 14, '2023-02-01');

truncate table abonnements cascade;

select a.adherent_id, a2.depot_id, d.distribution_id
from adhesions a
join adherents a2 on a2.adherent_id = a.adherent_id
join distributions d on d.depot_id = a2.depot_id,
LATERAL abonner(a.adherent_id, floor(random() * 6 + 1)::int, d.distribution_id , '2024-02-01')
where date_adhesion > '2023-12-31'

select * from livrer();
