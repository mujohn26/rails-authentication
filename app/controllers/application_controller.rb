class ApplicationController < ActionController::Base
  helper_method :logged_in?, :current_user
  def current_user
    @user = User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end
end
