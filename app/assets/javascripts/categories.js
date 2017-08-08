$(function(){
    $('.category-large').on('change',function(){
      var selected_val = $(this).val();
      console.log(selected_val);
    $('.form-group__input').find(".category-middle").each(function(){
      var child_val = $(this).data('val');
      console.log(child_val);
      if( selected_val == child_val){
        $(this).addClass('on');
      }else{
        $(this).removeClass('on');
      }
    })
 });
});
//       var val = $(this).prop('selectedIndex') - 1;
//       console.log(val);
//       if(val < 0){
//          $('#children select').removeClass('on');
//       }else{
//          $('#children select:not(:eq(val)) option').attr('selected', false);
//          $('#children select:not(:eq(val))').removeClass('on');
//          $('#children select').eq(val).addClass('on');
//       }
//     });
//     $('.category-middle').on('change',function(){
//       var val = $(this).prop('selectedIndex') - 1;
//       console.log(val);
//       if(val < 0){
//          $('#grandson select').removeClass('on');
//       }else{
//          $('#grandson select:not(:eq(val)) option').attr('selected', false);
//          $('#grandson select:not(:eq(val))').removeClass('on');
//          $('#grandson select').eq(val).addClass('on');
//       }
//     });
// });
