class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
  end


  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update
    redirect_to user_path(@user)
  end

end
