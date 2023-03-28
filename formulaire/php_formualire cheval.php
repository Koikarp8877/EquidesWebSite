<?php

// Vérifie si les données ont été soumises
if ($_SERVER["REQUEST_METHOD"] == "POST") {

  // Récupère les données du formulaire
  $numSire = $_POST["numSire"];
  $numUELN = $_POST["numUELN"];
  $nom_equide = $_POST["nom_equide"];
  $dateNaissance_equide = $_POST["dateNaissance_equide"];
  $lieuNaissance_equide = $_POST["lieuNaissance_equide"];
  $race_equide = $_POST["race_equide"];
  $stud_equide = $_POST["stud_equide"];
  $lieuElevage_equide = $_POST["lieuElevage_equide"];
  $sexe_equide = $_POST["sexe_equide"];
  $robe_equide = $_POST["robe_equide"];
  $naisseurVeterinaire_equide = $_POST["naisseurVeterinaire_equide"];
  $pere_equide = $_POST["pere_equide"];
  $mere_equide = $_POST["mere_equide"];

  // Connexion à la base de données
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "tqbjsdmportfolio";

  $conn = mysqli_connect($servername, $username, $password, $dbname);

  // Vérifie la connexion
  if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }

  // Prépare la requête SQL pour insérer les données dans la table "equide"
  $sql = "INSERT INTO equide (numSire, numUELN, nom_equide, dateNaissance_equide, lieuNaissance_equide, race_equide, stud_equide, lieuElevage_equide, sexe_equide, robe_equide, naisseurVeterinaire_equide, pere_equide, mere_equide)
  VALUES ('$numSire', '$numUELN', '$nom_equide', '$dateNaissance_equide', '$lieuNaissance_equide', '$race_equide', '$stud_equide', '$lieuElevage_equide', '$sexe_equide', '$robe_equide', '$naisseurVeterinaire_equide', '$pere_equide', '$mere_equide')";

  // Exécute la requête SQL
  if (mysqli_query($conn, $sql)) {
    echo "Enregistrement ajouté avec succès";
  } else {
    echo "Erreur: " . $sql . "<br>" . mysqli_error($conn);
  }

  // Ferme la connexion à la base de données
  mysqli_close($conn);
}

?>