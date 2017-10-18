$(document).ready( () => {
  $(".image-input").on("change", (e) => {
    console.log("image file detected!");
    let files = e.target.files;
    let image = files[0];
    let reader = new FileReader();
    reader.onload = (file) => {
      let img = new Image();
      img.src = file.target.result;
      $(".image-preview").html(img);
    }
    reader.readAsDataURL(image);
  });
});
