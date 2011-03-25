console.log('~/.js/wiki.roving.com.js');

$(document).ready(function() {  

  $(document).bind('keyup', function(event) {

    if ($(event.target).is(':input')) {
      return;
    }

    if (event.which == 83) {
      $('#quick-search-query').focus();
    }

  });

});
