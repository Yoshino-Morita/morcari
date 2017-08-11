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

  def address
    @user = current_user
    @areas = Area.select("name")
  end

  def address_create
    user = current_user
    if user.update(user_params)
      redirect_to user_credit_path
    end
  end

  def credit
    @user = current_user
  end

  def credit_create
    user = current_user
    if user.update(user_params)
      redirect_to user_complete_path
    end
  end

  def complete
    @user = current_user
  end

  def mylist
   @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :last_name, :first_name, :last_kananame, :first_kananame, :post_number, :city, :address, :building, :phone_number, :card_number,  :expiration_year, :expiration_month,:security_code, :user_photo, :total_money, :review_id, :area_id)
  end

end
