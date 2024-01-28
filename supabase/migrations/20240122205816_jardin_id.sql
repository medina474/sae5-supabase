alter table "adhesions" add constraint "adhesions_saison_id_fkey" FOREIGN KEY (saison_id) REFERENCES saisons(saison_id) ON DELETE CASCADE not valid;

alter table "adhesions" validate constraint "adhesions_saison_id_fkey";

alter table "fournisseurs" add constraint "fournisseurs_adresse_id_fkey" FOREIGN KEY (adresse_id) REFERENCES adresses(adresse_id) ON DELETE SET NULL not valid;

alter table "fournisseurs" validate constraint "fournisseurs_adresse_id_fkey";

alter table "jardins" add constraint "jardins_adresse_id_fkey" FOREIGN KEY (adresse_id) REFERENCES adresses(adresse_id) ON DELETE SET NULL not valid;

alter table "jardins" validate constraint "jardins_adresse_id_fkey";

alter table "jardins" add constraint "jardins_contact_id_fkey" FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) ON DELETE SET NULL not valid;

alter table "jardins" validate constraint "jardins_contact_id_fkey";

alter table "preparations" add constraint "preparations_jardin_id_fkey" FOREIGN KEY (jardin_id) REFERENCES jardins(jardin_id) ON DELETE CASCADE not valid;

alter table "preparations" validate constraint "preparations_jardin_id_fkey";
