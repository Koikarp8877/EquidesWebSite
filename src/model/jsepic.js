$(document).ready(function() {
    // Événement de clic sur la liste déroulante
    $('#result').on('click', 'li', function() {
      var nom = $(this).text();
      window.location.href = 'fiche_equide.php?nom=' + nom;
    });
  });
  