<?php

$pdo = new PDO("mysql:host=localhost;dbname=nom_de_la_base_de_donnees", "nom_utilisateur", "mot_de_passe");

// Récupération du terme de recherche
$search = $_GET['search'];

// Requête SQL pour récupérer les noms d'équides correspondants
$sql = "SELECT nom FROM equides WHERE nom LIKE :search";
$stmt = $pdo->prepare($sql);
$stmt->execute(['search' => "%$search%"]);
$results = $stmt->fetchAll(PDO::FETCH_COLUMN);

// Retourne les résultats en JSON
echo json_encode($results);
