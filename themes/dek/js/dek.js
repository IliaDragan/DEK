
(function($){
  $(document).ready(function() {

    if ( $('#block-system-main .content .content').height() > $('#map').height() ) {
      var Iheight = $('#block-system-main .image').height() + 35;

      $('#block-system-main .content .content .field').height($('#map').height() - Iheight);
      $('#block-system-main .content .content').height($('#map').height());
    }

    if ( $('#map').height() > $('#block-system-main .content .content').height() ) {
      // var Iheight = $('#block-system-main .image').height() + 25;
      var height = $('#map').height() - $('#block-system-main .image').height() - 35;

      $("#block-system-main .content .content .field").css("min-height", height);
      $('#block-system-main .content .content').height($('#map').height());
    }
  });
})(jQuery);

