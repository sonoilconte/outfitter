document.addEventListener("DOMContentLoaded", () => { 
  const onItemSelect = (e) => {
    e.preventDefault();
    document.getElementById("board-advice").innerHTML = "";
    const itemNode = e.target.closest(".item");
    console.log(itemNode);
    const itemId = itemNode.getAttribute("data-item-id");
    const section = itemNode.getAttribute("data-section-id");
    const imgUrl = itemNode.getAttribute("data-image-url");
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
    console.log(sectionNode)
    console.log(imgNode)
  };
  const items = document.querySelectorAll(".item");
  items.forEach(item => item.addEventListener("click", onItemSelect));
});

