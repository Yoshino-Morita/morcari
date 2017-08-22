class UsersController < ApplicationController

  def show
   @user = current_user
  end

  def create
  end

  def edit
  end

  def update
  end

  def entrance
  end

  #初回ユーザー登録

  def complete
   @user = current_user
  end

  def my_list
   @user = current_user
   @items = current_user.items.order("created_at DESC")
  end

  def transaction_list
   @user = current_user
  end

  def sell_end_list
   @user = current_user
  end

  def open_trade
   @user = current_user
  end

  def trading_performance
   @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(
      :nickname,
      :email,
      :last_name,
      :first_name,
      :last_kananame,
      :first_kananame,
      :post_number,
      :city,
      :address,
      :building,
      :phone_number,
      :card_number,
      :expiration_year,
      :expiration_month,
      :security_code,
      :user_photo,
      :total_money,
      :review_id,
      :area_id)
  end

end
