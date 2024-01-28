alter table "calendriers" add constraint "calendriers_jardin_id_fkey" FOREIGN KEY (jardin_id) REFERENCES jardins(jardin_id) ON DELETE CASCADE not valid;

alter table "calendriers" validate constraint "calendriers_jardin_id_fkey";

alter table "paniers" add constraint "paniers_frequence_id_fkey" FOREIGN KEY (frequence_id) REFERENCES frequences(frequence_id) not valid;

alter table "paniers" validate constraint "paniers_frequence_id_fkey";
