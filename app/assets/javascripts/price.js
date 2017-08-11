$(function(){
 $('.input-price').keyup(function(){
  var price = $('.input-price').val();
  price = parseInt(price) || 0;
  var commission = price*0.1
  var profit = price - commission
  console.log(price);
  console.log(commission)
  console.log(profit)
  if(!price){
    $('.input-price').val("");
    return false;
  }else if(300 <= price && price <= 9999999){
    $("#input_commission").text("¥" + Math.floor(commission).toLocaleString());
    $("#input_profit").text("¥" + Math.floor(profit).toLocaleString());
  }else{
    $("#input_commission").text("-");
    $("#input_profit").text("-");
  }
 });
});
