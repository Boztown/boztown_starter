class Admin::UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  handles_sortable_columns

  def index
    @users = User.all.order(sortable_column_order).page params[:page]
  end
  
  # GET /users/new
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    #@user.build_profile
    if @user.save
      redirect_to :admin_users
    else
      render :action => :edit, :status => :unprocessable_entity
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(
        :id, 
        :email,
        :password,
        :password_confirmation,
        :current_password,
        :base,
        :encrypted_password,
        :profile_attributes => [
          :id,
          :full_name,
          :avatar
        ]
      )
    end

end
