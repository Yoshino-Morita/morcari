class BuyController < ApplicationController

  def index
  end

  def buy
   @user = current_user
   @items = current_user.items.order("created_at DESC")
  end

  def buylist
   @user = current_user
   @items = current_user.items.order("created_at DESC")
  end

end
