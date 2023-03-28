$(document).ready(function() {
    // Événement de saisie dans la barre de recherche de nom
    $('input[name="search"]').on('input', function() {
      var search = $(this).val();
      if (search.length > 2) {
        // Appel AJAX pour récupérer les résultats de la recherche
        $.getJSON('search.php', {search: search}, function(results) {
          var list = $('<ul>');
          // Création des éléments de la liste déroulante
          $.each(results, function(index, value) {
            var item = $('<li>').text(value);
            item.on('click', function() {
              window.location.href = 'fiche_equide.php?nom=' + value;
            });
            list.append(item);
          });
          // Affichage des résultats
          $('#result').html(list);
        });
      }
    });
  
    // Événement de clic sur la liste déroulante
    $('input[name="search"]').on('click', function() {
      $('#result').show();
    });
  
    $(document).on('click', function(event) {
      if (!$(event.target).closest('#result').length && !$(event.target).is('input[name="search"]')) {
        $('#result').hide();
      }
    });
  });
  