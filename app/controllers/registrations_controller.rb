class RegistrationsController < ApplicationController
  skip_before_action :authenticate!
  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:email, :password, :password_confirmation)
    @user = User.new(user_params)
    if @user.save
      session[:user_id]  = @user.id
      redirect_to root_url, notice: "Your account has been created!"
    else
      render :new
    end
  end
end
