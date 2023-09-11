class SignupController < ApplicationController
  def new
    @obj = Obj.new
  end

  def create
    @obj = obj.create!(obj_params)
    session[:obj_id] = @obj.id
    redirect_to root_path
  end

  private
    def obj_params
      params.require(:obj).permit(:objname, :objpassword, :avatar)
    end
end
