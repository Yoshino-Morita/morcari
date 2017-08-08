$(function(){
    $('.delivery-parent').on('change',function(){
      var val = $(this).prop('selectedIndex') - 1;
      console.log(val);
      if(val < 0){
         $('#delivery-children').removeClass('on');
      }else if(val == 0){
         $('#delivery-children.seller').addClass("on");
         $('#delivery-children.buyer').removeClass('on');
      }else if(val == 1){
         $('#delivery-children.buyer').addClass("on");
         $('#delivery-children.seller').removeClass("on");
      }
      else{
         $('#delivery-children').removeClass('on');
      }
    });
});

