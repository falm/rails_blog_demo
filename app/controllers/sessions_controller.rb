class SessionsController < ApplicationController
  def new 
  end
  def create
    @user = User.authenticate(params[:username],params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "Welcome  #{@user.username}"
      redirect_to posts_path
    else
      flash[:notice] = "The username or password are incorrect"
      redirect_to new_session_path
    end
  end
end
