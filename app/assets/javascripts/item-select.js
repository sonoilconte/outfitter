$(document).ready(function(){

  $('.item').find('img').on('click', function(e){
    e.preventDefault();
    let item_id = $(this).closest('.item').data('item-id');
    let section = $(this).parent().parent().parent().data('section-id')
    let imgUrl = e.target.getAttribute('src');
    let imgHTML = `<img src=${imgUrl}>`;

    if(section === "shirt"){
      $('input[name=shirt_id]').val(item_id);
      $('#shirt-target').html(imgHTML);
    }
    else if (section === "pants") {
      $('input[name=pants_id]').val(item_id);
      $('#pants-target').html(imgHTML);
    }
    else {
      $('input[name=shoes_id]').val(item_id);
      $('#shoes-target').html(imgHTML);
    }
    console.log(imgUrl);
    console.log("item-id is", item_id);
    console.log(section);
  });
});
