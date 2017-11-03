"use strict";

$(document).ready(function () {

  var onItemSelect = function onItemSelect(e) {
    e.preventDefault();
    document.getElementById("board-advice").innerHTML = "";
    var itemNode = e.target.closest(".item");
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

  var items = document.getElementsByClassName("item");
  [].forEach.call(items, function (item) {
    return item.addEventListener("click", onItemSelect);
  });
});