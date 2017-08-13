class ItemsController < ApplicationController

  before_action :set_item_image

  def index
  end

  def new
  end

  def create
   @item = Item.new(item_params)
   if @item.save
    redirect_to root_path
   else
    render 'new'
   end
  end

  def show
    @user = current_user
    @item =  Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :category_large_id,:category_middle_id, :category_small_id, :size, :brand_id, :condition, :delivery_charge, :how_to_delivery, :area_id, :shipping_dates, :price, images_attributes: [:id, :image]).merge(user_id: current_user.id)
  end

  def image_params
    params.require(:image).permit(:image, :item_id)
  end

  def set_item_image
   @item = Item.new
   @item.images.build
  end
end

