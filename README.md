# Rapport d'Analyse Technique - clAra Mobility 🚗⚡

## 1. Organisation et Méthodologie
* [cite_start]**Répartition :** Travail réparti par quêtes SQL pour couvrir l'ensemble des besoins métier[cite: 20].
* [cite_start]**Workflow Git :** Commits réguliers pour chaque ajout de fonctionnalité (création de tables, insertions, quêtes)[cite: 5, 21].
* [cite_start]**Outils :** Utilisation de **PostgreSQL** pour le SGBD et **pgAdmin** pour l'exécution et le test des scripts[cite: 22, 58].

---

## 2. Analyse du Modèle de Données (MCD)
* [cite_start]**Architecture :** La base est composée de 4 tables : `vehicule`, `station`, `client` et `location`[cite: 24, 61].
* [cite_start]**Relations :** * La table `location` est le pivot central[cite: 25].
    * [cite_start]Elle utilise des **clés étrangères** pour lier un client à un véhicule et définir les stations de départ/arrivée[cite: 25, 26].
* [cite_start]**Pertinence :** Cette structure permet un suivi précis de la flotte et des historiques de location pour clAra Mobility[cite: 26, 39].



---

## 3. Choix Techniques et Syntaxe SQL
* [cite_start]**Stratégie :** Décomposition des besoins métier en requêtes progressives (du simple `SELECT` aux agrégations complexes)[cite: 29].
* **Justification des commandes :**
    * [cite_start]**JOIN :** Utilisé pour croiser les données entre les tables (ex: obtenir le nom du client pour une location)[cite: 30, 110].
    * [cite_start]**GROUP BY / HAVING :** Indispensable pour les calculs statistiques par ville ou pour filtrer les clients selon leur nombre de locations[cite: 30, 127, 128].
    * [cite_start]**LEFT JOIN :** Choisi spécifiquement pour identifier les véhicules n'ayant aucune correspondance dans la table location (véhicules jamais loués)[cite: 125, 129].

---

## 4. Difficultés et Solutions
* [cite_start]**Syntaxe PostgreSQL :** Adaptation des types de données (utilisation de `SERIAL` pour l'auto-incrémentation et `TIMESTAMP` pour les dates) afin de respecter les standards du SGBD imposé[cite: 33, 48, 56].
* [cite_start]**Logique de filtrage :** Traduction des besoins métier comme "disponibilité" ou "autonomie > 400km" via des clauses `WHERE` précises[cite: 31, 91, 93].