class AddressController < ApplicationController

  def index
  end

  def new
    @user = current_user
    @areas = Area.select("name")
  end

  def edit
  end

  def update
    @user = current_user
    if @user.update(address_params)
      redirect_to new_credit_path
    end
  end
  private

  def address_params
    params.require(:user).permit(:last_name, :first_name, :last_kananame, :first_kananame, :post_number, :city, :address, :building, :phone_number, :area_id)
  end
end
