$(document).ready(function(){
  var items = document.getElementsByClassName("item");
  for(var i=0; i<items.length; i++){
    items[i].addEventListener("click", onItemSelect);
  }
});

var onItemSelect = function(e){
  e.preventDefault();
  document.getElementById("board-advice").innerHTML = "";
  var itemNode = this.closest(".item");
  var itemId = itemNode.getAttribute("data-item-id");
  var section = itemNode.getAttribute("data-section-id");
  var imgUrl = itemNode.getAttribute("data-large-img");
  var imgNode = document.createElement("img");
  imgNode.src = imgUrl;

  var sectionMap = {
    shirt: {
      imgContainerId: "shirt-target",
      inputName: "shirt_id"
    },
    pants: {
      imgContainerId: "pants-target",
      inputName: "pants_id"
    },
    shoes: {
      imgContainerId: "shoes-target",
      inputName: "shoes_id"
    }
  };

  var sectionIds = sectionMap[section];
  document.getElementsByName(sectionIds.inputName)[0].setAttribute("value", itemId);
  var sectionNode = document.getElementById(sectionIds.imgContainerId);
  sectionNode.innerHTML = "";
  sectionNode.appendChild(imgNode);
};
