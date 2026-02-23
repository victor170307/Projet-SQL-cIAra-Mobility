-- Création de la table vehicule
CREATE TABLE vehicule (
    id_vehicule SERIAL PRIMARY KEY,
    marque VARCHAR(100) NOT NULL,
    modele VARCHAR(100) NOT NULL,
    type_vehicule VARCHAR(50) NOT NULL,
    autonomie_km INT,
    etat VARCHAR(50) NOT NULL,
    ville VARCHAR(100) NOT NULL
);

-- Création de la table station
CREATE TABLE station (
    id_station SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    ville VARCHAR(100) NOT NULL
);

-- Création de la table client
CREATE TABLE client (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL
);

-- Création de la table location
CREATE TABLE location (
    id_location SERIAL PRIMARY KEY,
    date_debut TIMESTAMP NOT NULL,
    date_fin TIMESTAMP, -- Peut être NULL si la location est en cours
    id_client INT NOT NULL,
    id_vehicule INT NOT NULL,
    id_station_depart INT NOT NULL,
    id_station_arrivee INT, -- Peut être NULL si le véhicule n'est pas encore rendu

    CONSTRAINT fk_client FOREIGN KEY (id_client) REFERENCES client(id_client),
    CONSTRAINT fk_vehicule FOREIGN KEY (id_vehicule) REFERENCES vehicule(id_vehicule),
    CONSTRAINT fk_station_depart FOREIGN KEY (id_station_depart) REFERENCES station(id_station),
    CONSTRAINT fk_station_arrivee FOREIGN KEY (id_station_arrivee) REFERENCES station(id_station)
);