$(document).on('turbolinks:load', function(){
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
    $('.category-middle').on('change',function(){
      var selected_val = $(this).val();
      console.log(selected_val);
    $('.form-group__input').find(".category-small").each(function(){
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
