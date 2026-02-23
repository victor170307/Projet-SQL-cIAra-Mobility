-- QUÊTE 1 : DÉCOUVERTE DU SQL

-- 1. Afficher tous les véhicules
SELECT * FROM vehicule; [cite: 90]

-- 2. Afficher uniquement les véhicules disponibles
SELECT * FROM vehicule WHERE etat = 'disponible'; [cite: 91]

-- 3. Afficher les véhicules situés dans une ville donnée (ex: 'Lyon')
SELECT * FROM vehicule WHERE ville = 'Lyon'; [cite: 92]

-- 4. Afficher les véhicules ayant une autonomie supérieure à 400 km
SELECT * FROM vehicule WHERE autonomie_km > 400; [cite: 93]