class ApplicationController < ActionController::Base
  def logged_in?
    !!session[:used_id]
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if !!session[:user_id]
  end
=begin  
  def current_user
    @_current_user ||= session[:current_user_id] && User.find_by(id: session[:current_user_id])
  end
=end
end
