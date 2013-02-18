class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.register(params)
    if @user
      flash[:notice] = "Register successful"
      redirect_to new_session_path
    else
      flash[:notice] = "The username already exists"
      redirect_to new_user_path
    end
  end
end
