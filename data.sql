-- Remplissage des clients
INSERT INTO client (nom, prenom, email) VALUES 
('Dupont', 'Jean', 'jean.dupont@email.com'),
('Durand', 'Marie', 'marie.durand@email.com');

-- Remplissage des stations
INSERT INTO station (nom, ville) VALUES 
('Station Bellecour', 'Lyon'),
('Station Vieux-Port', 'Marseille');

-- Remplissage des véhicules (avec différents états et autonomies)
INSERT INTO vehicule (marque, modele, type_vehicule, autonomie_km, etat, ville) VALUES 
('Tesla', 'Model 3', 'Voiture', 500, 'disponible', 'Lyon'),
('Renault', 'Zoe', 'Voiture', 350, 'en maintenance', 'Lyon'),
('Xiaomi', 'M365', 'Trottinette', 30, 'disponible', 'Marseille');

-- Remplissage d'une location
INSERT INTO location (date_debut, date_fin, id_client, id_vehicule, id_station_depart, id_station_arrivee) VALUES 
('2026-02-01 10:00:00', '2026-02-01 12:00:00', 1, 1, 1, 1);