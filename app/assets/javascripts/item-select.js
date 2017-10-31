$(document).ready(function(){

  $(".item")
    .find("img")
    .on("click", function(e){
      e.preventDefault();
      $("#board-advice").html("");

      var $item = $(this).closest(".item");
      var itemId = $item.data("item-id");
      var section = $item.data("section-id");

      var imgUrl = e.target.getAttribute("src").replace(/small/, "large");

      var imgNode = document.createElement("img");
      imgNode.src = imgUrl;

      var sectionMap = {
        shirt: {
          imgContainerId: "shirt-target",
          inputName: "shirtId"
        },
        pants: {
          imgContainerId: "pants-target",
          inputName: "pantsId"
        },
        shoes: {
          imgContainerId: "shoes-target",
          inputName: "shoesId"
        }
      };

      var sectionIds = sectionMap[section];

      $("input[name=" + sectionIds.inputName + "]").val(itemId);
      console.log("#" + sectionIds.imgContainerId);
      $("#" + sectionIds.imgContainerId).empty().append(imgNode);

      // if (sectionId === "shirt"){
      //   $("input[name=shirt_id]").val(itemId);
      //   $("#shirt-target").html(imgHTML);
      // }
      // if (sectionId === "pants") {
      //   $('input[name=pants_id]').val(itemId);
      //   $('#pants-target').html(imgHTML);
      // }
      // if (sectionId === "shoes") {
      //   $('input[name=shoes_id]').val(itemId);
      //   $('#shoes-target').html(imgHTML);
      // }
  });

});
