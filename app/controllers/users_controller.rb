class UsersController < ApplicationController

  #before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.geocoded
    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def show
    @user = User.find(params[:id])
    @my_followed_users = current_user.followings
    @not_followed_users = User.all - @my_followed_users - [current_user]
    @my_posts = current_user.posts.sort_by {|post| post.created_at}.reverse!
    @user_posts = @user.posts.sort_by {|post| post.created_at}.reverse!
    @all_posts = @my_posts + (current_user.followings.map {|foll| foll.posts}.flatten).sort_by {|post| post.created_at}.reverse!
  end

  def new
  end

  def create
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
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
    if current_user.class == User
      params.require(:user).permit(:email, :instrument, :gender, :biography, :introduction, :phone, :password, :address, :first_name, :last_name, :avatar, :level_id)
    elsif current_user.class == Student
      params.require(:student).permit(:email, :instrument, :gender, :biography, :introduction, :phone, :password, :address, :first_name, :last_name, :avatar, :level_id)
    elsif current_user.class == Teacher
      params.require(:teacher).permit(:email, :instrument, :gender, :biography, :introduction, :phone, :password, :address, :first_name, :last_name, :avatar, :level_id)
    elsif current_user.class == Admin
      params.require(:admin).permit(:email, :instrument, :gender, :biography, :introduction, :phone, :password, :address, :first_name, :last_name, :avatar, :level_id)
    end
  end

end
