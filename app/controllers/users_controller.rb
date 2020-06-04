class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @my_followed_users = current_user.followings
    @not_followed_users = User.all - @my_followed_users - [current_user]
  end

  def new
  end

  def create
  end

  def edit
    @user = current_user
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "user successfully updated"
      redirect_to user_path(@user)
    else
      flash[:notice] = "Sorry, an error has occurred."
      render :edit
    end
  end

  def destroy
  end



  private

  def user_params
    params.require(:user).permit(:email, :occupation, :favorite_composer, :instrument, :gender, :biography, :address, :first_name, :last_name, :photo, :level_id)
  end

  def set_user
    @user = current_user
  end

end
