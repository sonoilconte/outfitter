$(document).ready( function(){
  $(".image-input").on("change", function(e){
    console.log("image file detected!");
    let files = e.target.files;
    let image = files[0];
    let reader = new FileReader();
    reader.onload = function(file){
      let img = new Image();
      img.src = file.target.result;
      $(".image-preview").html(img);
    }
    reader.readAsDataURL(image);
  });
});
