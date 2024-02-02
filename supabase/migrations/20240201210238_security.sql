alter table abonnements enable row level security;

alter table adresses enable row level security;

alter table calendriers enable row level security;

alter table contacts enable row level security;

alter table distributions enable row level security;



alter table frequences enable row level security;

alter table livraisons enable row level security;

alter table modes_paiement enable row level security;

alter table plannings enable row level security;

alter table preparations enable row level security;

alter table produits enable row level security;

alter table tournees enable row level security;

create policy "Enable read access for all users"
on abonnements
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
on "distributions"
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
on "tournees"
as permissive
for select
to public
using (true);
