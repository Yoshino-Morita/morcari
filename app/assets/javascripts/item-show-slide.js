 $(document).on('turbolinks:load', function(){
    //写真1枚の幅を取得
    var itemSlideWidth = $('.item-carousel__list').width();
    console.log(itemSlideWidth);

    //写真の数を取得
    var itemSlideNum = $('.item-carousel__list').length;
    console.log(itemSlideNum);

    //写真全体の幅を計算し、設定する(= '.item-carousel__stage')
    var itemTotalWidth = itemSlideWidth * itemSlideNum;
    $('.item-carousel__stage').css('width', itemTotalWidth);
    console.log(itemTotalWidth);

    //スライドの初期値を設定
    var itemSlideCurrent = 0;

    $('.item-list__image').mouseover(function(e){
      //選択した画像を明るくする
      $(this).css({opacity: "1"});
      //data(id)を取得し、順番を設定
      var itemOrder = $(this).data('id');
      console.log(itemOrder);

      var itemSliding = function(){
        $('.item-carousel__stage').animate({
          left: itemSlideCurrent - itemSlideWidth*itemOrder},
          'fast');
       }
      itemSliding();
    }).mouseout(function(){
      $('.item-list__image').css({opacity: "0.4"});
    })
 });
