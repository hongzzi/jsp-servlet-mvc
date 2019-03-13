$(function() {
      $('#comment').keyup(function (e){
          var content = $(this).val();
          $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
          $('#counter').html(content.length);
      });
      $('#comment').keyup();
});

$(document).ready(function() {
    $('#comment').on('keyup', function() {
        if($(this).val().length > 280) {
            $(this).val($(this).val().substring(0, 280));
        }
    });
});

