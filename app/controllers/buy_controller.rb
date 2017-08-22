class BuyController < ApplicationController

  def buy_page
    @user = current_user
    @item = Item.find(params[:item_id])
  end

  def buy
    @user = current_user
    @item = Item.find(params[:item_id])
    @item.buyer_id = current_user.id
    @item.status = "取引完了"
    redirect_to root_path
  end

  # def buylist
  #  @user = current_user
  #  @items = current_user.items.order("created_at DESC")
  # end

end
