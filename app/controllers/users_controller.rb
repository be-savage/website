class UsersController < ApplicationController

  authorize_resource

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :name, :firstname, :nickname, :team_id)
  end
end
