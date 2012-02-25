function readURL(input, button) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function (e) {
      button.css('background-image', "url('" + e.target.result + "')");
    }

    reader.readAsDataURL(input.files[0]);
  }
}
