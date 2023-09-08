class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])
    #binding.pry
    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user_id 
      redirect_to root_path
    else
      message = "something went wrong" 
      redirect_to login_path, notice: message
    end
  end

  def destroy
    session.delete(:user_id)
    # Clear the memoized current user
    @user = nil
    redirect_to root_path, status: :see_other
  end

=begin
  def create
    if user = User.authenticate(params[:username], params[:password])
      # Save the user ID in the session so it can be used in
      # subsequent requests
      session[:current_user_id] = user.id
      redirect_to root_url
    end
  end
=end
end
