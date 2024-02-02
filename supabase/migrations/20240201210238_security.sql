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

alter table tournees enable row level security;

create policy "Lecture publique"
on abonnements
as permissive
for select
to public
using (true);


create policy "Lecture publique"
on "adresses"
as permissive
for select
to public
using (true);

create policy "Lecture publique"
on "calendriers"
as permissive
for select
to public
using (true);

create policy "Lecture publique"
on "contacts"
as permissive
for select
to public
using (true);


create policy "Lecture publique"
on "distributions"
as permissive
for select
to public
using (true);


create policy "Lecture publique"
on "frequences"
as permissive
for select
to public
using (true);


create policy "Lecture publique"
on "livraisons"
as permissive
for select
to public
using (true);


create policy "Lecture publique"
on "modes_paiement"
as permissive
for select
to public
using (true);

create policy "Lecture publique"
on "plannings"
as permissive
for select
to public
using (true);


create policy "Lecture publique"
on "preparations"
as permissive
for select
to public
using (true);




create policy "Lecture publique"
on "tournees"
as permissive
for select
to public
using (true);
