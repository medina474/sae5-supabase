insert into jardins (jardin_id,jardin,tva) values
(1,'Jardins de Cocagne Thaon les Vosges','FR42400245775');

insert into contacts (contact_id,jardin_id,contact,telephone,email) values
(1,1,'Christophine Séchion','0699880001',NULL);

update jardins set contact_id = 1 where jardin_id = 1;

insert into adresses (adresse_id,jardin_id,adresse,codepostal,ville,localisation) values
(1,1,'Prairie Claudel','88150','Thaon-les-Vosges','SRID=4326;POINT(6.427672 48.2531016)');

update jardins set adresse_id = 1 where jardin_id = 1;

-- Calendrier général

insert into saisons (saison_id,jardin_id,saison,date_debut,date_fin) values
(1,1,'2025','2025-01-01','2025-12-31');

insert into fermetures (fermeture_id,jardin_id,saison_id,semaine) values
(1,1,1,1),
(2,1,1,52);

insert into feries (ferie_id,jardin_id,ferie,jour) values
(1,1,'Fête du Travail','2025-05-01'),
(2,1,'Lundi de Pâques','2025-04-01'),
(3,1,'Ascension','2025-05-09'),
(4,1,'Victoire 1945','2025-05-08'),
(5,1,'Pentecôte','2025-06-09'),
(6,1,'Fête nationale','2025-07-14'),
(7,1,'Assomption','2025-08-15'),
(8,1,'Toussaint','2025-11-01'),
(9,1,'Armistice 1918','2025-11-11');

insert into preparations (preparation_id,jardin_id,preparation,jour) values
(1,1,'Mardi',1),
(2,1,'Jeudi',3);

-- Dépôts

insert into contacts (contact_id,jardin_id,contact,telephone,email) values
(2,1,'Fursy Galriawla','0678283490',NULL),
(3,1,'Iseline Triiwel','0755044134',NULL);

insert into adresses (adresse_id,jardin_id,adresse,codepostal,ville,localisation) values
(2,1,'6 av. Salvador Allende','88000','Épinal','SRID=4326;POINT(6.4599403 48.1938105)');

insert into depots (depot_id,jardin_id,depot,adresse_id,contact_id,capacite) values
(1,1,'Jardins de Cocagne',1,2,100),
(2,1,'Centre Léo Lagrange',2,3,60);

-- Calendriers

insert into frequences (frequence_id,jardin_id,frequence) values
(1,1,'hebdomadaire'),
(2,1,'15 jours'),
(3,1,'libre');

insert into calendriers (calendrier_id,jardin_id,calendrier) values
(1,1,'Livraisons du mardi');

insert into tournees (tournee_id,jardin_id,tournee,preparation_id,calendrier_id,ordre,couleur) values
(1,1,'Mardi (Épinal)',1,1,1,'#ef476f');

insert into distributions (distribution_id,jardin_id,tournee_id,depot_id,ordre) values
(1,1,1,2,1);

insert into adherents (adherent_id,jardin_id,adherent,depot_id) values
(1,1,'RODRIQUE Daniel',2);

insert into adhesions (adhesion_id,adherent_id,jardin_id,date_adhesion,montant,saison_id) values
(1,1,1,'2025-02-01',30,1);

insert into produits (produit_id,jardin_id,produit) values
(1,1,'Panier simple'),
(2,1,'Panier familial');

insert into paniers (panier_id,produit_id,panier,frequence_id,quantite) values
(1,1,'Panier simple hebdomadaire',1,50),
(2,1,'Panier simple 15 jours',2,25),
(3,2,'Panier familial hebdomadaire',1,50),
(4,2,'Panier familial 15 jours',2,25);

insert into abonnements (abonnement_id,adherent_id,panier_id) values
(1,1,1);

insert into livraisons (livraison_id,jardin_id,abonnement_id,distribution_id,qte,livre,jour) values
(1,1,1,1,1,'livré','2025-01-07'),
(2,1,1,1,1,'livré','2025-01-14'),
(3,1,1,1,1,'livré','2025-01-21'),
(4,1,1,1,1,'livré','2025-01-28'),
(5,1,1,1,1,'livré','2025-02-04'),
(6,1,1,1,1,'à livrer','2025-02-11'),
(7,1,1,1,1,'à livrer','2025-02-18'),
(8,1,1,1,1,'à livrer','2025-02-25'),
(9,1,1,1,1,'à livrer','2025-03-04'),
(10,1,1,1,1,'à livrer','2025-03-11'),
(11,1,1,1,1,'à livrer','2025-03-18'),
(12,1,1,1,1,'à livrer','2025-03-25'),
(13,1,1,1,1,'à livrer','2025-04-01'),
(14,1,1,1,1,'à livrer','2025-04-08'),
(15,1,1,1,1,'à livrer','2025-04-15'),
(16,1,1,1,1,'à livrer','2025-04-22'),
(17,1,1,1,1,'à livrer','2025-04-29'),
(18,1,1,1,1,'à livrer','2025-05-06'),
(19,1,1,1,1,'à livrer','2025-05-13'),
(20,1,1,1,1,'à livrer','2025-05-20'),
(21,1,1,1,1,'à livrer','2025-05-27'),
(22,1,1,1,1,'à livrer','2025-06-03'),
(23,1,1,1,1,'à livrer','2025-06-10'),
(24,1,1,1,1,'à livrer','2025-06-17'),
(25,1,1,1,1,'à livrer','2025-06-24'),
(26,1,1,1,1,'à livrer','2025-07-01'),
(27,1,1,1,1,'à livrer','2025-07-08'),
(28,1,1,1,1,'à livrer','2025-07-15'),
(29,1,1,1,1,'à livrer','2025-07-22'),
(30,1,1,1,1,'à livrer','2025-07-29'),
(31,1,1,1,1,'à livrer','2025-08-05'),
(32,1,1,1,1,'à livrer','2025-08-12'),
(33,1,1,1,1,'à livrer','2025-08-19'),
(34,1,1,1,1,'à livrer','2025-08-26'),
(35,1,1,1,1,'à livrer','2025-09-02'),
(36,1,1,1,1,'à livrer','2025-09-09'),
(37,1,1,1,1,'à livrer','2025-09-16'),
(38,1,1,1,1,'à livrer','2025-09-23'),
(39,1,1,1,1,'à livrer','2025-09-30'),
(40,1,1,1,1,'à livrer','2025-10-07'),
(41,1,1,1,1,'à livrer','2025-10-14'),
(42,1,1,1,1,'à livrer','2025-10-21'),
(43,1,1,1,1,'à livrer','2025-10-28'),
(44,1,1,1,1,'à livrer','2025-11-04'),
(45,1,1,1,1,'à livrer','2025-11-10'),
(46,1,1,1,1,'à livrer','2025-11-18'),
(47,1,1,1,1,'à livrer','2025-11-25'),
(48,1,1,1,1,'à livrer','2025-12-02'),
(49,1,1,1,1,'à livrer','2025-12-09'),
(50,1,1,1,1,'à livrer','2025-12-16');
