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
(1,1,'Panier simple');

insert into paniers (panier_id,produit_id,panier,quantite) values
(1,1,'Panier simple hebdomadaire',50);

insert into abonnements (abonnement_id,adherent_id,panier_id) values
(1,1,1);

insert into livraisons (livraison_id,jardin_id,abonnement_id,distribution_id,qte,livre,jour) values
(1,1,1,1,1,'à livrer','2025-01-07'),
(1985263;3;Vrai;1;28;2025;14/01/25),
(1985264;4;Vrai;1;28;2025;21/01/25),
(1985265;5;Vrai;1;28;2025;28/01/25),
(1985266;6;Vrai;1;28;2025;04/02/25),
(1985267;7,'à livrer',1;28;2025;11/02/25),
(1985268;8,'à livrer',1;28;2025;18/02/25),
(1985269;9,'à livrer',1;28;2025;25/02/25),
(1985270;10,'à livrer',1;28;2025;04/03/25;APS;2812),
(1985271;11,'à livrer',1;28;2025;11/03/25;APS;2812),
(1985272;12,'à livrer',1;28;2025;18/03/25;APS;2812),
(1985273;13,'à livrer',1;28;2025;25/03/25;APS;2812),
(1985274;14,'à livrer',1;28;2025;01/04/25;APS;2812),
(1985275;15,'à livrer',1;28;2025;08/04/25;APS;2812),
(1985276;16,'à livrer',1;28;2025;15/04/25;APS;2812),
(1985277;17,'à livrer',1;28;2025;22/04/25;APS;2812),
(1985278;18,'à livrer',1;28;2025;29/04/25;APS;2812),
(1985279;19,'à livrer',1;28;2025;06/05/25;APS;2812),
(1985280;20,'à livrer',1;28;2025;13/05/25;APS;2812),
(1985281;21,'à livrer',1;28;2025;20/05/25;APS;2812),
(1985282;22,'à livrer',1;28;2025;27/05/25;APS;2812),
(1985283;23,'à livrer',1;28;2025;03/06/25;APS;2812),
(1985284;24,'à livrer',1;28;2025;10/06/25;APS;2812),
(1985285;25,'à livrer',1;28;2025;17/06/25;APS;2812),
(1985286;26,'à livrer',1;28;2025;24/06/25;APS;2812),
(1985287;27,'à livrer',1;28;2025;01/07/25;APS;2812),
(1985288;28,'à livrer',1;28;2025;08/07/25;APS;2812),
(1985289;29,'à livrer',1;28;2025;15/07/25;APS;2812),
(1985290;30,'à livrer',1;28;2025;22/07/25;APS;2812),
(1985291;31,'à livrer',1;28;2025;29/07/25;APS;2812),
(1985292;32,'à livrer',1;28;2025;05/08/25;APS;2812),
(1985293;33,'à livrer',1;28;2025;12/08/25;APS;2812),
(1985294;34,'à livrer',1;28;2025;19/08/25;APS;2812),
(1985295;35,'à livrer',1;28;2025;26/08/25;APS;2812),
(1985296;36,'à livrer',1;28;2025;02/09/25;APS;2812),
(1985297;37,'à livrer',1;28;2025;09/09/25;APS;2812),
(1985298;38,'à livrer',1;28;2025;16/09/25;APS;2812),
(1985299;39,'à livrer',1;28;2025;23/09/25;APS;2812),
(1985300;40,'à livrer',1;28;2025;30/09/25;APS;2812),
(1985301;41,'à livrer',1;28;2025;07/10/25;APS;2812),
(1985302;42,'à livrer',1;28;2025;14/10/25;APS;2812),
(1985303;43,'à livrer',1;28;2025;21/10/25;APS;2812),
(1985304;44,'à livrer',1;28;2025;28/10/25;APS;2812),
(1985305;45,'à livrer',1;28;2025;04/11/25;APS;2812),
(1985306;46,'à livrer',1;28;2025;10/11/25;APS;2812),
(1985307;47,'à livrer',1;28;2025;18/11/25;APS;2812),
(1985308;48,'à livrer',1;28;2025;25/11/25;APS;2812),
(1985309;49,'à livrer',1;28;2025;02/12/25;APS;2812),
(1985310;50,'à livrer',1;28;2025;09/12/25;APS;2812),
(1985311;51,'à livrer',1;28;2025;16/12/25;APS;2812);

