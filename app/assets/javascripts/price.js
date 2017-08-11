$(function(){
 $('#item-price').on({
  "input" : function(e){
  var price = $(this).val();
  console.log(price);
  }
 })
});

