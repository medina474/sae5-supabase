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
(1,1,'Lundi de Pâques','2025-04-21'),
(2,1,'Fête du Travail','2025-05-01'),
(3,1,'Victoire 1945','2025-05-08'),
(4,1,'Ascension','2025-05-29'),
(5,1,'Pentecôte','2025-06-09'),
(6,1,'Fête nationale','2025-07-14'),
(7,1,'Assomption','2025-08-15'),
(8,1,'Toussaint','2025-11-01'),
(9,1,'Armistice 1918','2025-11-11');

-- Dépôts

insert into contacts (contact_id,jardin_id,contact,telephone,email) values
(2,1,'Fursy Galriawla','0678283490',NULL),
(3,1,'Iseline Triiwel','0755044134',NULL),
(4,1,'Matthis Krütt','0685215584',NULL);

insert into adresses (adresse_id,jardin_id,adresse,codepostal,ville,localisation) values
(2,1,'6 av. Salvador Allende','88000','Épinal','SRID=4326;POINT(6.4599403 48.1938105)'),
(3,1,'12 rue Armand Colle','88000','Épinal','SRID=4326;POINT(6.4489619 48.1604568)'),
(4,1,'15 rue Général de Reffye','88000','Épinal','SRID=4326;POINT(6.4323215 48.1819469)'),
(5,1,'rue de la papeterie','88000','Dinozé','SRID=4326;POINT(6.4738942 48.1383687)'),
(6,1,'36 bis rue de la Plaine','88190','Golbey','SRID=4326;POINT(6.4426982 48.1929337)'),
(7,1,'avenue des Terres St Jean','88190','Golbey','SRID=4326;POINT(6.4692286 48.1891998)'),
(8,1,'17 rue André Vitu','88000','Épinal','SRID=4326;POINT(6.465403 48.1775685)'),
(9,1,'24 rue du Gal de Gaulle','88200','St Nabord','SRID=4326;POINT(6.5807814 48.0510352)'),
(10,1,'26 rue de la Joncherie','88200','Remiremont','SRID=4326;POINT(6.5934293 48.0189339)'),
(11,1,'6 Place C. Poncelet','88200','Remiremont','SRID=4326;POINT(6.5917178 48.0159918)'),
(12,1,'7 Rue du Savron','88220','Raon-aux-Bois','SRID=4326;POINT(6.5036466 48.0504027)'),
(13,1,'1 rue Moncey','88460','Docelles','SRID=4326;POINT(6.6162166 48.1460719)'),
(14,1,'15 rue Ste Barbe','88130','Charmes','SRID=4326;POINT(6.2951122 48.3777043)'),
(15,1,'15 rue du Maréchal Lyautey','88000','Épinal','SRID=4326;POINT(6.4457306 48.177777)'),
(16,1,'Zac Barbazan','88600','Bruyères','SRID=4326;POINT(6.7208371 48.2032056)'),
(17,1,'2 rue de Fraisne','88600','Bruyères','SRID=4326;POINT(6.7196903 48.2050495)'),
(18,1,'45 boulevard d''Alsace','88400','Gérardmer','SRID=4326;POINT(6.8763148 48.0738404)'),
(19,1,'24 route du Noirpré','88530','Le Tholy','SRID=4326;POINT(6.7477787 48.0812967)'),
(20,1,'9 rue de la Louvière','88000','Épinal','SRID=4326;POINT(6.4531588 48.1723212)');

insert into depots (depot_id,jardin_id,depot,adresse_id,contact_id,capacite) values
(1,1,'Jardins de Cocagne',1,2,100),
(2,1,'Centre Léo Lagrange',2,3,60),
(3,1,'Église Saint Antoine',3,4,40),
(4,1,'Ligue de l’enseignement',4,NULL,40),
(5,1,'APF - Local extérieur – ESAT',5,NULL,20),
(6,1,'Ecodenn’ergie',6,NULL,20),
(7,1,'Botanic',7,NULL,20),
(8,1,'Chambre d’Agriculture',8,NULL,20),
(9,1,'Pharmacie Robert',9,NULL,20),
(10,1,'Association GACI',10,NULL,80),
(11,1,'Office du tourisme',11,NULL,20),
(12,1,'Raon aux Bois',12,NULL,20),
(13,1,'Mr et Mme Boulassel',13,NULL,20),
(14,1,'Madame Pierot',14,NULL,20),
(15,1,'3ème Rive Café Associatif',15,NULL,20),
(16,1,'Point Vert Mafra',16,NULL,20),
(17,1,'Brico Marché',17,NULL,20),
(18,1,'Pro & Cie',18,NULL,20),
(19,1,'M. Lecomte François',19,NULL,20),
(20,1,'Maison de l’Étudiant',20,NULL,20);

-- Calendriers

insert into calendriers (calendrier_id,jardin_id,calendrier) values
(1,1,'Livraisons du mardi'),
(2,1,'Livraisons du mercredi'),
(3,1,'Livraisons du jeudi'),
(4,1,'Livraisons du vendredi');

insert into frequences (frequence_id,jardin_id,frequence) values
(1,1,'hebdomadaire'),
(2,1,'15 jours'),
(3,1,'libre');

insert into plannings (planning_id,calendrier_id,jour) values
(1,1,'2025-01-07'),
(2,1,'2025-01-14'),
(3,1,'2025-01-21'),
(4,1,'2025-01-28'),
(5,1,'2025-02-04'),
(6,1,'2025-02-11'),
(7,1,'2025-02-18'),
(8,1,'2025-02-25'),
(9,1,'2025-03-04'),
(10,1,'2025-03-11'),
(11,1,'2025-03-18'),
(12,1,'2025-03-25'),
(13,1,'2025-04-01'),
(14,1,'2025-04-08'),
(15,1,'2025-04-15'),
(16,1,'2025-04-22'),
(17,1,'2025-04-29'),
(18,1,'2025-05-06'),
(19,1,'2025-05-13'),
(20,1,'2025-05-20'),
(21,1,'2025-05-27'),
(22,1,'2025-06-03'),
(23,1,'2025-06-10'),
(24,1,'2025-06-17'),
(25,1,'2025-06-24'),
(26,1,'2025-07-01'),
(27,1,'2025-07-08'),
(28,1,'2025-07-15'),
(29,1,'2025-07-22'),
(30,1,'2025-07-29'),
(31,1,'2025-08-05'),
(32,1,'2025-08-12'),
(33,1,'2025-08-19'),
(34,1,'2025-08-26'),
(35,1,'2025-09-02'),
(36,1,'2025-09-09'),
(37,1,'2025-09-16'),
(38,1,'2025-09-23'),
(39,1,'2025-09-30'),
(40,1,'2025-10-07'),
(41,1,'2025-10-14'),
(42,1,'2025-10-21'),
(43,1,'2025-10-28'),
(44,1,'2025-11-04'),
(45,1,'2025-11-10'),
(46,1,'2025-11-18'),
(47,1,'2025-11-25'),
(48,1,'2025-12-02'),
(49,1,'2025-12-09'),
(50,1,'2025-12-16');

-- Propositions

insert into propositions (panier_id, planning_id) values
(2,1),
(2,3),
(2,5);

-- Produits

insert into produits (produit_id,jardin_id,produit) values
(1,1,'Panier simple'),
(2,1,'Panier familial');

insert into paniers (panier_id,produit_id,panier,frequence_id,quantite) values
(1,1,'Panier simple hebdomadaire',1,50),
(2,1,'Panier simple 15 jours',2,25),
(3,2,'Panier familial hebdomadaire',1,50),
(4,2,'Panier familial 15 jours',2,25);

-- Adhérents

insert into adherents (adherent_id,jardin_id,adherent,depot_id) values
(1,1,'RODRIQUE Daniel',2);

insert into adhesions (adhesion_id,adherent_id,jardin_id,date_adhesion,montant,saison_id) values
(1,1,1,'2025-02-01',30,1);

insert into abonnements (abonnement_id,adherent_id,panier_id) values
(1,1,1);

-- Production

insert into preparations (preparation_id,jardin_id,preparation,jour) values
(1,1,'Mardi',1),
(2,1,'Jeudi',3);

insert into tournees (tournee_id,jardin_id,tournee,preparation_id,calendrier_id,ordre,couleur) values
(1,1,'Mardi (Épinal)',1,1,1,'#ef476f'),
(2,1,'Mardi (Jardins)',1,1,2,'#038966'),
(3,1,'Mercredi matin',1,2,3,'#ffd166'),
(4,1,'Mercredi après-midi',1,2,4,'#06d6a0'),
(5,1,'Mercredi (Jardins)',1,2,6,'#073b4c'),
(6,1,'Jeudi (Salariés)',2,3,1,'#a2304b'),
(7,1,'Vendredi (Épinal)',2,4,3,'#b29247'),
(8,1,'Vendredi (Jardins)',2,4,6,'#07ffbe'),
(9,1,'Jeudi (Charmes)',2,3,2,'#094e65'),
(10,1,'Vendredi (Gérardmer)',2,4,4,'#000000'),
(11,1,'Mercredi (Ent.)',1,2,5,'#118ab2'),
(12,1,'Vendredi (Ent.)',2,4,5,'#ff4b5e');

insert into distributions (distribution_id,jardin_id,tournee_id,depot_id,ordre) values
(1,1,1,2,1),
(2,1,1,3,1),
(3,1,1,4,2),
(4,1,1,5,5),
(5,1,1,6,6),
(6,1,1,7,7),
(7,1,1,8,9),
(8,1,2,9,1),
(9,1,3,10,1),
(10,1,3,11,2),
(11,1,3,12,3),
(12,1,3,13,4),
(13,1,1,14,4),
(14,1,1,15,3),
(15,1,1,16,8),
(16,1,1,17,10),
(17,1,3,18,5),
(18,1,3,19,6),
(19,1,3,20,8),
(20,1,3,10,9),
(21,1,4,11,1),
(22,1,4,12,3),
(23,1,4,13,2),
(24,1,4,14,4),
(25,1,4,15,5),
(26,1,4,16,6),
(27,1,4,17,7),
(28,1,4,18,8),
(29,1,4,19,9),
(30,1,6,20,1),
(31,1,5,10,2);

insert into livraisons (livraison_id,jardin_id,abonnement_id,distribution_id,qte,livre,planning_id) values
(1,1,1,1,1,'livré',1),
(2,1,1,1,1,'livré',2),
(3,1,1,1,1,'livré',3),
(4,1,1,1,1,'livré',4),
(5,1,1,1,1,'livré',5),
(6,1,1,1,1,'à livrer',6),
(7,1,1,1,1,'à livrer',7),
(8,1,1,1,1,'à livrer',8),
(9,1,1,1,1,'à livrer',9),
(10,1,1,1,1,'à livrer',10),
(11,1,1,1,1,'à livrer',11),
(12,1,1,1,1,'à livrer',12),
(13,1,1,1,1,'à livrer',13),
(14,1,1,1,1,'à livrer',14),
(15,1,1,1,1,'à livrer',15),
(16,1,1,1,1,'à livrer',16),
(17,1,1,1,1,'à livrer',17),
(18,1,1,1,1,'à livrer',18),
(19,1,1,1,1,'à livrer',19),
(20,1,1,1,1,'à livrer',20),
(21,1,1,1,1,'à livrer',21),
(22,1,1,1,1,'à livrer',22),
(23,1,1,1,1,'à livrer',23),
(24,1,1,1,1,'à livrer',24),
(25,1,1,1,1,'à livrer',25),
(26,1,1,1,1,'à livrer',26),
(27,1,1,1,1,'à livrer',27),
(28,1,1,1,1,'à livrer',28),
(29,1,1,1,1,'à livrer',29),
(30,1,1,1,1,'à livrer',30),
(31,1,1,1,1,'à livrer',31),
(32,1,1,1,1,'à livrer',32),
(33,1,1,1,1,'à livrer',33),
(34,1,1,1,1,'à livrer',34),
(35,1,1,1,1,'à livrer',35),
(36,1,1,1,1,'à livrer',36),
(37,1,1,1,1,'à livrer',37),
(38,1,1,1,1,'à livrer',38),
(39,1,1,1,1,'à livrer',39),
(40,1,1,1,1,'à livrer',40),
(41,1,1,1,1,'à livrer',41),
(42,1,1,1,1,'à livrer',42),
(43,1,1,1,1,'à livrer',43),
(44,1,1,1,1,'à livrer',44),
(45,1,1,1,1,'à livrer',45),
(46,1,1,1,1,'à livrer',46),
(47,1,1,1,1,'à livrer',47),
(48,1,1,1,1,'à livrer',48),
(49,1,1,1,1,'à livrer',49),
(50,1,1,1,1,'à livrer',50);
