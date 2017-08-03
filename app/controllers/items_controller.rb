class ItemsController < ApplicationController

  def index
  end

  def new
   @item = Item.new
  end

  def create
   @item = Item.new
  end

  private

  def item_params
    params.require(:item).permit(:name, :image_id, :description, :category_large_id,:category_middle_id, :category_small_id, :size, :brand_id, :condition, :delivery_charge, :how_to_delivery, :area_id, :shipping_dates, :price)
  end
end

