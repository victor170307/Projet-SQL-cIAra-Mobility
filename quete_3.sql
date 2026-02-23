-- 1. Afficher la liste des locations avec le nom et le prénom du client
SELECT l.id_location, c.nom, c.prenom 
FROM location l
JOIN client c ON l.id_client = c.id_client;

-- 2. Afficher la liste des locations avec la marque et le modèle du véhicule
SELECT l.id_location, v.marque, v.modele 
FROM location l
JOIN vehicule v ON l.id_vehicule = v.id_vehicule;

-- 3. Afficher la station de départ et la station d’arrivée pour chaque location
-- Note : On utilise deux jointures sur la même table 'station' avec des alias
SELECT l.id_location, s_dep.nom AS station_depart, s_arr.nom AS station_arrivee
FROM location l
JOIN station s_dep ON l.id_station_depart = s_dep.id_station
JOIN station s_arr ON l.id_station_arrivee = s_arr.id_station;