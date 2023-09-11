class NewUsersController < ApplicationController
  before_action :set_new_user, only: %i[ show edit update destroy ]

  # GET /new_users or /new_users.json
  def index
    @new_users = NewUser.all
  end

  # GET /new_users/1 or /new_users/1.json
  def show
  end

  # GET /new_users/new
  def new
    @new_user = NewUser.new
  end

  # GET /new_users/1/edit
  def edit
  end

  # POST /new_users or /new_users.json
  def create
    #binding.pry 
    @new_user = NewUser.new(new_user_params)

    respond_to do |format|
      if @new_user.save
        format.html { redirect_to new_user_url(@new_user), notice: "New user was successfully created." }
        format.json { render :show, status: :created, location: @new_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @new_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_users/1 or /new_users/1.json
  def update
    respond_to do |format|
      if @new_user.update(new_user_params)
        format.html { redirect_to new_user_url(@new_user), notice: "New user was successfully updated." }
        format.json { render :show, status: :ok, location: @new_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @new_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_users/1 or /new_users/1.json
  def destroy
    @new_user.destroy

    respond_to do |format|
      format.html { redirect_to new_users_url, notice: "New user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_user
      @new_user = NewUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def new_user_params
      params.require(:new_user).permit(:name, :email, :phone_number, :profile_photo)
    end
end
