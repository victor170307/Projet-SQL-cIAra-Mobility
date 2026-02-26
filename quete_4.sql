
SELECT COUNT(*) AS total_vehicules 
FROM vehicule;


SELECT ville, COUNT(*) AS nb_vehicules 
FROM vehicule 
GROUP BY ville;

SELECT AVG(autonomie_km) AS autonomie_moyenne 
FROM vehicule;


SELECT id_client, COUNT(*) AS total_locations 
FROM location 
GROUP BY id_client;