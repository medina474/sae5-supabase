alter table "abonnements" enable row level security;

alter table "adherents" enable row level security;

alter table "adhesions" enable row level security;

alter table "adresses" enable row level security;

alter table "calendriers" enable row level security;

alter table "contacts" enable row level security;

alter table "depots" enable row level security;

alter table "distributions" enable row level security;

alter table "feries" enable row level security;

alter table "fermetures" enable row level security;

alter table "fournisseurs" enable row level security;

alter table "frequences" enable row level security;

alter table "jardins" enable row level security;

alter table "livraisons" enable row level security;

alter table "modes_paiement" enable row level security;

alter table "paniers" enable row level security;

alter table "plannings" enable row level security;

alter table "preparations" enable row level security;

alter table "produits" enable row level security;

alter table "saisons" enable row level security;

alter table "tournees" enable row level security;

create policy "Enable read access for all users"
on "abonnements"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "adherents"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "adhesions"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "adresses"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "calendriers"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "contacts"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "depots"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "distributions"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "feries"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "fermetures"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "fournisseurs"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "frequences"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "jardins"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "livraisons"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "modes_paiement"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "paniers"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "plannings"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "preparations"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "produits"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "saisons"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "tournees"
as permissive
for select
to public
using (true);
