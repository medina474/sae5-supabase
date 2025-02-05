insert into jardins (jardin_id,jardin,tva) values
(1,'Jardins de Cocagne Thaon les Vosges','FR42400245775');

insert into contacts (contact_id,jardin_id,contact,telephone,email) values
(1,1,'Christophine Séchion','0699880001',NULL);

update jardins set contact_id = 1 where jardin_id = 1;

insert into adresses (adresse_id,jardin_id,adresse,codepostal,ville,localisation) values
(1,1,'Prairie Claudel','88150','Thaon-les-Vosges','SRID=4326;POINT(6.427672 48.2531016)');

update jardins set adresse_id = 1 where jardin_id = 1;

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

insert into contacts (contact_id,jardin_id,contact,telephone,email) values
(2,1,'Fursy Galriawla','0678283490',NULL),
(3,1,'Iseline Triiwel','0755044134',NULL);

insert into adresses (adresse_id,jardin_id,adresse,codepostal,ville,localisation) values
(2,1,'6 av. Salvador Allende','88000','Épinal','SRID=4326;POINT(6.4599403 48.1938105)');

insert into depots (depot_id,jardin_id,depot,adresse_id,contact_id,capacite) values
(1,1,'Jardins de Cocagne',1,2,100),
(2,1,'Centre Léo Lagrange',2,3,60);

insert into adherents (adherent_id,jardin_id,adherent,depot_id) values
(1,1,'RODRIQUE Daniel',2);

insert into adhesions (adhesion_id,adherent_id,jardin_id,date_adhesion,montant,saison_id) values
(1,1,1,'2025-02-01',30,1);

insert into paniers (panier_id,jardin_id,panier) values
(1,1,'Panier simple');

insert into abonnements (abonnement_id,adherent_id,panier_id) values
(1,1,1);
