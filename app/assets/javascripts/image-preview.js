$(document).ready( function(){
  $(".image-input").on("change", function(e){
    console.log("image file detected!");
    var files = e.target.files;
    var image = files[0];
    var reader = new FileReader();
    reader.onload = function(file){
      var img = new Image();
      img.src = file.target.result;
      $(".image-preview").html(img);
    }
    reader.readAsDataURL(image);
  });
});
