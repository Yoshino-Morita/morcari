class BuyController < ApplicationController

  def index
    @user = current_user
    @item = Item.find(params[:item_id])
  end

  def buy
    @user = current_user
    @item = Item.find(params[:item_id])
    @item.buyer_id = current_user.id
    @item.status = "取引完了"
  end

  def buylist
   @user = current_user
   @items = current_user.items.order("created_at DESC")
  end

end
