console.log('~/.js/twitter.com.js');

$(document).ready(function() {  

  $(document).bind('keyup', function(event) {

    if ($(event.target).is(':input')) {
      return;
    }

    if (event.which == 83) {
      $('#search-query').focus();
    }

  });

});

