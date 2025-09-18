document.addEventListener("turbo:load", () => {
  const imageInput = document.getElementById("image-input");
  if (!imageInput) {
    return;
  } 
  imageInput.addEventListener("change", (e) => {
    const image = e.target.files[0];
    if (!image) {
      return;
    }
    const reader = new FileReader();
    reader.onload = ({ target }) => { 
      const img = new Image();
      img.src = target.result;
      const previewDiv = document.getElementById("image-preview");
      if (!previewDiv) {
        return;
      }
      previewDiv.innerHTML = "";
      previewDiv.appendChild(img);
    };
    reader.readAsDataURL(image);
  }); 
});
