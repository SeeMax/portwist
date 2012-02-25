$(document).ready(function(){

  $(".fancybox").fancybox();

  $('#photo_set_your_name').focus(function(){
    $(this).val(' ');
  });

  $('#photo_set_your_title').focus(function(){
    $(this).val(' ');
  });

});
