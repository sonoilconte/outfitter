$(document).ready(function(){

  $(".item")
    .find("img")
    .on("click", function(e){
      e.preventDefault();
      $("#board-advice").html("");

      var $item = $(this).closest(".item");
      var itemId = $item.data("item-id");
      var section = $item.data("section-id");
      var imgUrl = $item.data("large-img");

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
      $("input[name=" + sectionIds.inputName + "]").val(itemId);
      $("#" + sectionIds.imgContainerId).empty().append(imgNode);
  });

});
