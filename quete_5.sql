SELECT * FROM vehicule 
WHERE etat = 'disponible' 
ORDER BY autonomie_km DESC 
LIMIT 3;

SELECT ville, COUNT(*) AS nb_dispo 
FROM vehicule 
WHERE etat = 'disponible' 
GROUP BY ville 
ORDER BY nb_dispo DESC 
LIMIT 1;


SELECT id_client, COUNT(*) 
FROM location 
GROUP BY id_client 
HAVING COUNT(*) >= 2;

SELECT v.* FROM vehicule v
LEFT JOIN location l ON v.id_vehicule = l.id_vehicule
WHERE l.id_location IS NULL;