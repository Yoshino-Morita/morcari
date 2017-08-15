$(document).on('turbolinks:load', function(){
  function addFigure(str) {
    var num = new String(str).replace(/,/g, "");
    while(num != (num = num.replace(/^(-?\d+)(\d{3})/, "$1,$2")));
    console.log(num);
    return num;
    }
  $('.item-main__price').each(function(){
      console.log(this);
      $(this).html(addFigure($(this).html()));
  });
});




