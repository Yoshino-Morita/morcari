class CreditController < ApplicationController

  def index
  end

  def new
    @user = current_user
  end

  def edit
  end

  def update
    @user = current_user
    if @user.update(credit_params)
      redirect_to user_complete_path(@user)
    end
  end

  private

  def credit_params
    params.require(:user).permit(:card_number,  :expiration_year, :expiration_month,:security_code)
  end
end
