-- 1. Afficher le nombre total de véhicules
SELECT COUNT(*) AS total_vehicules 
FROM vehicule;

-- 2. Afficher le nombre de véhicules par ville
SELECT ville, COUNT(*) AS nb_vehicules 
FROM vehicule 
GROUP BY ville;

-- 3. Afficher l’autonomie moyenne des véhicules
SELECT AVG(autonomie_km) AS autonomie_moyenne 
FROM vehicule;

-- 4. Afficher le nombre de locations effectuées par client
SELECT id_client, COUNT(*) AS total_locations 
FROM location 
GROUP BY id_client;