alter table "public"."adhesions" add constraint "adhesions_saison_id_fkey" FOREIGN KEY (saison_id) REFERENCES saisons(saison_id) ON DELETE CASCADE not valid;

alter table "public"."adhesions" validate constraint "adhesions_saison_id_fkey";

alter table "public"."fournisseurs" add constraint "fournisseurs_adresse_id_fkey" FOREIGN KEY (adresse_id) REFERENCES adresses(adresse_id) ON DELETE SET NULL not valid;

alter table "public"."fournisseurs" validate constraint "fournisseurs_adresse_id_fkey";

alter table "public"."jardins" add constraint "jardins_adresse_id_fkey" FOREIGN KEY (adresse_id) REFERENCES adresses(adresse_id) ON DELETE SET NULL not valid;

alter table "public"."jardins" validate constraint "jardins_adresse_id_fkey";

alter table "public"."jardins" add constraint "jardins_contact_id_fkey" FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) ON DELETE SET NULL not valid;

alter table "public"."jardins" validate constraint "jardins_contact_id_fkey";

alter table "public"."preparations" add constraint "preparations_jardin_id_fkey" FOREIGN KEY (jardin_id) REFERENCES jardins(jardin_id) ON DELETE CASCADE not valid;

alter table "public"."preparations" validate constraint "preparations_jardin_id_fkey";


