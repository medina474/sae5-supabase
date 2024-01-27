alter table "public"."livraisons" drop constraint "livraison_jardin_id_fkey";

alter table "public"."livraisons" drop column "saison_id";

alter table "public"."livraisons" drop column "semaine";

alter table "public"."livraisons" add constraint "livraisons_abonnement_id_fkey" FOREIGN KEY (abonnement_id) REFERENCES abonnements(abonnement_id) not valid;

alter table "public"."livraisons" validate constraint "livraisons_abonnement_id_fkey";

alter table "public"."livraisons" add constraint "livraisons_distribution_id_fkey" FOREIGN KEY (distribution_id) REFERENCES distributions(distribution_id) not valid;

alter table "public"."livraisons" validate constraint "livraisons_distribution_id_fkey";

alter table "public"."livraisons" add constraint "livraisons_jardin_id_fkey" FOREIGN KEY (jardin_id) REFERENCES jardins(jardin_id) ON DELETE CASCADE not valid;

alter table "public"."livraisons" validate constraint "livraisons_jardin_id_fkey";


