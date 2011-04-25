console.log('~/.js/wm.constantcontact.com.js');

(function($) {

  function initialize() {
    handleHover();
    handleDown();
    handleUp();
    handleSelect();
  }

  function handleHover() {
    $('ul.list > li').hover(
      function() {
        $('ul.list > li').each(function() { $(this).removeClass('hover'); } );
        $(this).addClass('hover').focus();
      },
      function() {
        $(this).removeClass('hover');
      }
    );
  }

  function handleDown() {
    $(document).bind('keydown', 'j', function() {
      //console.log('j');
      if ($('ul.list > li').length == 0) { return; }
      if ($('ul.list > li').hasClass('hover')) {
        $('ul.list > li.hover').removeClass('hover')
          .next().addClass('hover').focus();
      } else {
        $('ul.list > li').first().addClass('hover');
      }
    });
  }

  function handleUp() {
    $(document).bind('keydown', 'k', function() {
      //console.log('k');
      if ($('ul.list > li').length == 0) { return; }
      if ($('ul.list > li').hasClass('hover')) {
        $('ul.list > li.hover').removeClass('hover')
          .prev().addClass('hover').focus();
      } else {
        $('ul.list > li').first().addClass('hover');
      }
    });
  }

  function handleSelect() {
    $(document).bind('keyup', 'o', function() {
      //console.log('o');
      openMessage();
    });
    $(document).bind('keyup', 'return', function() {
      //console.log('return');
      openMessage();
    });
  }

  function openMessage() {
    if ($('ul.list > li.hover > a.title').length == 0) { return; }
    $('#progress').show();
    document.location = $('ul.list > li.hover > a.title').attr('href');
  }

  $(document).ready(initialize);

})(jQuery);

