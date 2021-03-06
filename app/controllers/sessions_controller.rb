class SessionsController < ApplicationController
  skip_before_action :signed_in_user, except: [:destroy]

  def new 
  end

  def create
    user = User.find_by_username(params[:sessions][:username])
    p params
    if user 
      session[:user_id] = user.id 
      redirect_to root_path, notice: "Logged in!"
    else 
      flash.now.alert = "That username does not exist. Please enter a valid username"
      render 'new'
    end
  end

  def destroy 
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end

end
