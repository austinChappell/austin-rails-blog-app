class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    debugger
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end