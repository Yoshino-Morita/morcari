class ItemsController < ApplicationController

  before_action :set_item_image

  def index
    category_and_item_select
  end

  def category_and_item_select
   #トップビューで表示するカテゴリーを取得する
   @categories = []
   #初期値
   category_num = 1
     while category_num <= 3 do
       @category = Category.find(category_num)
       @categories << @category
       category_num += 1
     end
     @items = []
     #itemに振り分けるカテゴリーを配列から取り出す
     @categories.each do |category|
     @item = Item.where(category_large_id: category.id).select{|item| item.buyer_id == nil}
     @items << @item
     end
  end


  def new
  end

  def create
   @item = Item.new(item_params)
   @item.status = "出品中"
   if @item.save
      if params[:images]
         params[:images].each { |image|
         @item.images.create(image: image)
          }
      end
    redirect_to root_path
   else
    render 'new'
   end
  end


  def show
    @user = current_user
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update

  end


  def destroy
    if @item.user_id == current_user.id
       @item.destroy
       redirect_to 'user_mylist_path'
    end
  end


  def buy_page
    @user = current_user
    @item = Item.find(params[:item_id])
  end

  def buy
    @user = current_user
    @item = Item.find(params[:item_id])
    @item.buyer_id = current_user.id
    @item.status = "取引完了"
    @item.save
    redirect_to item_buy_done_path
  end

  def buy_done
    @user = current_user
    @item = Item.find(params[:item_id])
    #itemの値を先に取り出しておく
      @image = @item.images.first
      @sales_commission = ((@item.price)*0.1).floor
      @profit = (@item.price - @sales_commission)
    @review = Review.new
  end

  def create_review
    @item = Item.find(params[:item_id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to root_path
    end
  end

  private

  def item_params
    params.require(:item).permit(
      :name,
      :description,
      :category_large_id,
      :category_middle_id,
      :category_small_id,
      :size,
      :brand_id,
      :condition,
      :delivery_charge,
      :how_to_delivery,
      :area_id,
      :shipping_dates,
      :price,
      :status,
      images_attributes: [:id, :image]).merge(user_id: current_user.id)
  end

  def image_params
    params.require(:image).permit(
      :image,
      :item_id)
  end

  def review_params
    params.require(:review).permit(
      :evaluation,
      :text,
      :user_id,
      :buyer_id).merge(user_id:@item.user_id , buyer_id: current_user.id)
  end

  def set_item_image
   @item = Item.new
   @item.images.build
  end

end

