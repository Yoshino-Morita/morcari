$(document).on('turbolinks:load', function(){
 $('.input-price').keyup(function(){
  var price = $('.input-price').val();
  // 初期値設定
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
    // 小数点以下切捨
    $("#input_commission").text("¥" + Math.floor(commission).toLocaleString());
    $("#input_profit").text("¥" + Math.floor(profit).toLocaleString());
  }else{
    $("#input_commission").text("-");
    $("#input_profit").text("-");
  }
 });
});
