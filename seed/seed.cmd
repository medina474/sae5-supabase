@echo off

call 01_jardins.cmd
call 02_adresses.cmd
call 03_contacts.cmd

pause
echo saisons
call 10_saisons.cmd
call 11_fermetures.cmd
call 12_feries.cmd

call 20_depots.cmd

pause
echo adherents
call 30_adherents.cmd
call 31_adhesions.cmd

echo préparations
call preparations.cmd
::call fournisseurs.cmd

call 41_frequences.cmd

echo produits
call 40_produits.cmd

echo paniers
call 42_paniers.cmd

echo calendries
call calendriers.cmd

echo tournï¿½es
call tournees.cmd

echo distributions
call distributions.cmd

echo plannings
call plannings.cmd
::call abonnements.cmd
