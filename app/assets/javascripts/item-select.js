$(document).ready(function(){

  $('.item').find('img').on('click', function(e){
    e.preventDefault();
    $('#board-advice').html("");
    var item_id = $(this).closest('.item').data('item-id');
    var section = $(this).closest('.item').data('section-id');
    // take the url of the clicked image, but swap in the large high res image
    var imgUrl = e.target.getAttribute('src').replace(/small/, "large");
    var imgHTML = "<img src=" + imgUrl + ">";

    if (section === "shirt"){
      $('input[name=shirt_id]').val(item_id);
      $('#shirt-target').html(imgHTML);
    }
    if (section === "pants") {
      $('input[name=pants_id]').val(item_id);
      $('#pants-target').html(imgHTML);
    }
    if (section === "shoes") {
      $('input[name=shoes_id]').val(item_id);
      $('#shoes-target').html(imgHTML);
    }
  });

});
