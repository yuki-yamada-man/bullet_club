class UsersController < ApplicationController
  
  def index
    @users = Users.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  def quit
    @user = User.find(params[:id])
  end
  
  def out
    @user = User.find(params[:id])
    if @user.update(is_enabled: false)
      sign_out current_user
    end
    redirect_to root_path
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name,:image,:content,:indroduction)
  end
end
