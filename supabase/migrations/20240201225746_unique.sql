create or replace function changer_date_livraison() returns trigger as $emp_stamp$
    begin
        update livraisons set jour = new.jour where jour = old.jour;

        return new;
    end;
$emp_stamp$ language plpgsql;

create trigger change_date_planning
  after update on plannings
  for each row
  execute function changer_date_livraison();

create type livraison as enum (
  'à livrer',
  'livré',
  'non pris',
  'perdu'
);
