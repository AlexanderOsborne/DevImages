class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find_by(params[:id])
  end

  def create
    user = User.new(user_params_create)
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Account Created!"
      redirect_to user_dashboard_path
    else
      flash[:error] = "Invalid Login"
      redirect_to new_user_path
    end
  end

  private
  def user_params_create
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
