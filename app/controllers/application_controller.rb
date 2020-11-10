class ApplicationController < ActionController::Base
  before_action :signed_in_user

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    helper_method :current_user

    def signed_in_user
      unless user_signed_in?
       redirect_to login_url, alert: "Not authorized"
      end
    end

    def user_signed_in?
      !current_user.nil?
    end

    helper_method :user_signed_in?
end
