class FollowsController < ApplicationController
  include UsersHelper
  def index
    @all_users = User.all
    @all_follows = Follow.all
    @my_followed_users = current_user.followings
    @not_followed_users = User.all - @my_followed_users - [current_user]
    @users = User.geocoded
    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def create
    @new_follow = Follow.new(follower_id: current_user.id, followed_user_id: params[:followed])
    if @new_follow.save
      flash[:notice] = "New Follow created"
      redirect_to follows_path
    else
      flash[:notice] = "Sorry, an error has occurred."
      redirect_to follows_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    @follow = Follow.find {|f| f.follower_id == current_user.id && f.followed_user_id == @user.id}
    respond_to do |format|
      if @follow.destroy
        format.js
      else
        format.js
      end
    end
  end

  private

  def follow!(followed)
    Follow.create(follower_id: current_user.id, followed_user_id: followed.id)
  end
end
