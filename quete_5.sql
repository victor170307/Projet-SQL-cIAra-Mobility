-- 1. Afficher les trois véhicules les plus autonomes actuellement disponibles
SELECT * FROM vehicule 
WHERE etat = 'disponible' 
ORDER BY autonomie_km DESC 
LIMIT 3;

-- 2. Afficher la ville possédant le plus de véhicules disponibles
SELECT ville, COUNT(*) AS nb_dispo 
FROM vehicule 
WHERE etat = 'disponible' 
GROUP BY ville 
ORDER BY nb_dispo DESC 
LIMIT 1;

-- 3. Afficher les clients ayant effectué au moins deux locations
SELECT id_client, COUNT(*) 
FROM location 
GROUP BY id_client 
HAVING COUNT(*) >= 2;

-- 4. Afficher les véhicules n’ayant jamais été loués (utilisation du LEFT JOIN)
SELECT v.* FROM vehicule v
LEFT JOIN location l ON v.id_vehicule = l.id_vehicule
WHERE l.id_location IS NULL;