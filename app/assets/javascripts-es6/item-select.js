$(document).ready(() => {

  const onItemSelect = (e) => {
    e.preventDefault();
    document.getElementById("board-advice").innerHTML = "";
    const itemNode = e.target.closest(".item");
    const itemId = itemNode.getAttribute("data-item-id");
    const section = itemNode.getAttribute("data-section-id");
    const imgUrl = itemNode.getAttribute("data-large-img");
    const imgNode = document.createElement("img");
    imgNode.src = imgUrl;

    const sectionMap = {
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
    const sectionIds = sectionMap[section];
    document.getElementsByName(sectionIds.inputName)[0].setAttribute("value", itemId);
    const sectionNode = document.getElementById(sectionIds.imgContainerId);
    sectionNode.innerHTML = "";
    sectionNode.appendChild(imgNode);
  };

  const items = document.getElementsByClassName("item");
  [].forEach.call(items, item => item.addEventListener("click", onItemSelect));
});
