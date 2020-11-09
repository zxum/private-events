class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Welcome #{@user.username}! Thank you for signing up!"
    else 
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private 

  def user_params 
    params.require(:user).permit(:username)
  end
end
