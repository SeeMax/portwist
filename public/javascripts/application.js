$(document).ready(function(){

  // 
  $('.photo_set_photo_file_field').hover(function() {
   $(this).css('cursor','pointer');
   }, function() {
   $(this).css('cursor','auto');
  });
  
  $(".photo_set_photo_file_field").change(function(){
    $(this).parent().addClass("photo_set_photo_file_field_chosen");
   });

});
