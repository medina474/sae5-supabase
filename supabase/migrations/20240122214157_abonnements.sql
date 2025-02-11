create table abonnements (
	abonnement_id int8 not null,
	created_at timestamptz not null default now(),
	adherent_id int8 null,
	panier_id int8 null,
	date_debut date null,
	nombre int2 null,
	montant numeric null,
	mode_paiement_id int8 null,
	saison_id int8 null
);

alter table abonnements 
  alter column abonnement_id 
  add generated by default as identity;

alter table abonnements
  add primary key (abonnement_id);

alter table abonnements
  add foreign key (adherent_id) references adherents on delete cascade not valid;

alter table abonnements
  add foreign key (panier_id) references paniers;
