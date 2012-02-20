$(document).ready(function(){

  // modals

  $(".fancybox").fancybox();

  //
  // file uploads
  //

  var SITE = SITE || {};

  SITE.fileInputs = function() {
   var $this = $(this),
       $val = $this.val(),
       valArray = $val.split('\\'),
       newVal = valArray[valArray.length-1],
       $button = $this.siblings('.button'),
       $fakeFile = $this.siblings('.file-holder');
   if(newVal !== '') {
     $button.text('GOT IT');
     if($fakeFile.length === 0) {
       $button.after('<span class="file-holder">' + newVal + '</span>');
     } else {
       $fakeFile.text(newVal);
     }
   }
  };

  $(document).ready(function() {
   $('.file-wrapper input[type=file]').bind('change focus click', SITE.fileInputs);
  });

  $('#photo_set_your_name').focus(function(){
    $(this).val(' ');
  });
  
  $('#photo_set_your_title').focus(function(){
    $(this).val(' ');
  });

});
